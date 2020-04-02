. .\Copy-SpellingDictionary.ps1

function Get-ProcessStream
{
    Param (
                [Parameter(Mandatory=$true)]$Stream,
                [Parameter(Mandatory=$true)]$FileName,
                $Args
    )
    
    $process = New-Object System.Diagnostics.Process
    $process.StartInfo.UseShellExecute = $false
    $process.StartInfo.RedirectStandardOutput = ($Stream -eq 'StandardOutput')
    $process.StartInfo.RedirectStandardError = ($Stream -eq 'StandardError')
    $process.StartInfo.FileName = $FileName
    if($Args) { $process.StartInfo.Arguments = $Args }
    
    $process.Start()
    
    if ($Stream -eq "StandardOutput")
    {
        $output = $process.StandardOutput.ReadToEnd()
    }
    elseif ($Stream -eq "StandardError")
    {
        $output = $process.StandardError.ReadToEnd()
    }

    $output
}

function Test-Spelling([string] $docsPath, [string] $folder)
{
        Copy-SpellingDictionary "$docsPath\.."

    $commandPath = "$env:APPDATA\npm\cspell.cmd"
    $pathToCheck = "$docsPath\$folder\**\*.md"
    $configFile = "$docsPath\..\.cspell.json"
    $arguments = "/c $commandPath $pathToCheck -c $configFile"

    $output = Get-ProcessStream "StandardError" -FileName $env:ComSpec -Args $arguments

    $expression = "Issues found: (?<issues>[0-9]*) in "
    $hits = ([regex]$expression).Matches($output)
    if ($hits.Count -gt 0)
    {
        $issues = $hits.Groups[1].Value
    }
    else
    {
        throw "Unexpected process output: '$output'"
    }

    return $issues
} 

function Test-Markdown([String] $docsPath, [String] $fileType)
{
    $commandPath = "$env:APPDATA\npm\markdownlint.cmd"
    $pathToCheck = "$docsPath\**\*.$fileType"
    $configFile = "$docsPath\.markdownlint.json"
    $arguments = "/c $commandPath $pathToCheck -c $configFile"

    $output = Get-ProcessStream "StandardError" -FileName $env:ComSpec -Args $arguments

    $expression = " MD[0-9][0-9][0-9]"
    $hits = ([regex]$expression).Matches($output)
    return $hits.Count
}
