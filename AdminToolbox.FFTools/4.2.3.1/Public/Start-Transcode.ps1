function Start-Transcode {
    <#
    .DESCRIPTION
    Transcodes video files containing extenstions *.mp4, *.mkv, *.avi, and *.mpg

    Inputed Parameters are

    -c:v libx265 -crf 21 -ac 6 -c:a aac -preset veryfast

    .Example
    Start-Transcode
    #>
    [cmdletbinding()]
    param (
    )

    if ($env:FFToolsSource -and $env:FFToolsTarget) {
        #Change directory to the source folder
        Set-Location $env:FFToolsSource


        $ext = "*.mkv"
        $array = @(Get-ChildItem -filter $ext)
        Foreach ($video in $array.Name) {
            ffmpeg.exe -i $video -c:v libx265 -crf 21 -ac 6 -c:a aac -preset veryfast "$env:FFToolsTarget$video"
        }

        $ext = "*.avi"
        $array = @(Get-ChildItem -filter $ext)
        Foreach ($video in $array.Name) {
            ffmpeg.exe -i $video -c:v libx265 -crf 21 -ac 6 -c:a aac -preset veryfast "$env:FFToolsTarget$video"
        }

        $ext = "*.mp4"
        $array = @(Get-ChildItem -filter $ext)
        Foreach ($video in $array.Name) {
            ffmpeg.exe -i $video -c:v libx265 -crf 21 -ac 6 -c:a aac -preset veryfast "$env:FFToolsTarget$video"
        }

        $ext = "*.mpg"
        $array = @(Get-ChildItem -filter $ext)
        Foreach ($video in $array.Name) {
            ffmpeg.exe -i $video -c:v libx265 -crf 21 -ac 6 -c:a aac -preset veryfast "$env:FFToolsTarget$video"
        }
    }

    else {
        Write-Warning "You must first run Set-FFToolsVariables! This is only required once."
    }
}