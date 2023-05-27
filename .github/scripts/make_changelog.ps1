Write-Output "Latest tag: $(git describe --tags --abbrev=0)`n"

$ChangedFiles = git diff --find-renames --name-status (git describe --tags --abbrev=0)
Write-Output "::group::Changed Files"
Write-Output $ChangedFiles
Write-Output "::endgroup::`n"

Write-Output "::group::Convertion"
$Text = ""
$Texture = ""
$Other = ""
foreach ($file in $ChangedFiles) {
    $FileWStatus = $file.Split("`t")
    if ($file -match "src/BepInEx/Translation/.+" -and $file -notmatch ".+_AutoGeneratedTranslations.txt$") {
        switch -Wildcard ($FileWStatus[0]) {
            "A*" {
                $Log = "- Added "
                $FileName = $FileWStatus[1]
            }
            "M*" {
                $Log = "- Updated "
                $FileName = $FileWStatus[1]
            }
            "R*" {
                $Log = "- Updated "
                $FileName = $FileWStatus[2]
            }
            "D*" {
                $Log = "- Deleted "
                $FileName = $FileWStatus[1]
            }
        }
        $Splitted = $FileName.Split("/")
        if ("Text" -in $Splitted) {
            if ( $Splitted[4] ) {
                $Log += $Splitted[3] + ": " + (Split-Path -LeafBase $FileName) + "`n"
            }
            else {
                $Log += (Split-Path -LeafBase $FileName) + "`n"
            }
            $Text += $Log
        }
        else {
            $Log += $Splitted[3] + ": " + $Splitted[4].Split(" ")[0] + "`n"
            if (!$Texture -match $Log) {
                $Texture += $Log
            }
        }
    }
    elseif ($file -match ".+config/.+") {
        $Log = "- Updated $(Split-Path -LeafBase $FileWStatus[1])`n"
        $Other += $Log
    }
    Write-Output "$file`n=> $Log"
}
Write-Output "::endgroup::`n"

Write-Output "::group::Final Release Note"
$ListVar = "Text", "Texture", "Other"
"`n# Changelog`n" >> "./RELEASE_NOTE"
foreach ($VarName in $ListVar) {
    $Value = Get-Variable -ValueOnly $VarName
    if ($Value) {
        "<details><summary>$VarName</summary>`n" >> "./RELEASE_NOTE"
        $Value >> "./RELEASE_NOTE"
        "</details>" >> "./RELEASE_NOTE"
    }
}
Write-Output "## Text: `n$Text`n## Texture: `n$Texture## Other: `n$Other"
Write-Output "::endgroup::`n"