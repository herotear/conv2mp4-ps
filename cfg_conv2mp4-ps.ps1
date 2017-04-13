<#======================================================================================================================
cfg_conv2mp4-ps v3.0-SNAPSHOT04122017 - https://github.com/BrianDMG/conv2mp4-ps

***THIS IS A BETA - DO NOT USE IN PRODUCTION***

This script stores user-defined variables retrieved from setup_conv2mp4.ps1. 
The values in this file can also be manually edited.
========================================================================================================================

Dependencies:

PowerShell 3.0+
ffmpeg : https://ffmpeg.org/download.html
handbrakecli : https://handbrake.fr/downloads.php
------------------------------------------------------------------------------------------------------------------------#>

<#----------------------------------------------------------------------------------------------------------------------
User-defined variables
------------------------------------------------------------------------------------------------------------------------
$mediaPath = the path to the media you want to convert (no trailing '\')
NOTE: For network shares, use UNC path if you plan on running this script as a scheduled task.
----- If running manually and using a mapped drive, you must run 'net use z: \\server\share /persistent:yes' as the user
----- you're going to run the script as (generally Administrator) prior to running the script.
$fileTypes = the extensions of the files you want to convert in the format '*.ex1', '*.ex2'. Do NOT add .mp4!
$logPath = path you want the log file to save to. defaults to your desktop. (no trailing '\')
$logName = the filename of the log file
$plexIP = the IP address and port of your Plex server (for the purpose of refreshing its libraries)
$plexToken = your Plex server's token (for the purpose of refreshing its libraries).
NOTE: Plex server token - See https://support.plex.tv/hc/en-us/articles/204059436-Finding-your-account-token-X-Plex-Token
----- Plex server token is also easy to retrieve with PlexPy, Ombi, Couchpotato, or SickRage 
$ffmpegBinDir = path to ffmpeg bin folder (no trailing '\'). This is the directory containing ffmpeg.exe and ffprobe.exe 
$handbrakeDir = path to Handbrake directory (no trailing '\'). This is the directory containing HandBrakeCLI.exe
$script:garbage = the extensions of the files you want to delete in the format '*.ex1', '*.ex2'
$appendLog = False will clear log at the beginning of every session, True will append new session log to old session log 
-----------------------------------------------------------------------------------------------------------------------#>
$mediaPath = "\\your\path\here"
$fileTypes = "*.mkv", "*.avi", "*.flv", "*.mpeg", "*.ts" #Do NOT add .mp4!
$logPath = "$PSScriptRoot"
$logName= "conv2mp4-ps.log"
$plexIP = 'plexip:32400'
$plexToken = 'plextoken'
$ffmpegBinDir = "C:\ffmpeg\bin"
$handbrakeDir = "C:\Program Files\HandBrake"
$script:garbage = "*.nfo"
$appendLog = $False