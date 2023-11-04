cleanmgr.exe /autoclean
cleanmgr /verylowdisk /c
cleanmgr /verylowdisk /d
Clear-RecycleBin -Force 
rm -Path C:\Users\vince\AppData\Local\Temp\*.* -r -force
rm -Path C:\Windows\Prefetch\*.* -r -force
rm -Path C:\Windows\Temp\*.* -r -force
rm -Path C:\Users\vince\AppData\Local\NVIDIA\DXCache\*.* -r -force
rm -Path C:\Users\vince\AppData\Local\NVIDIA\GLCache\*.* -r -force
rm -Path C:\Users\vince\AppData\Local\Google\Chrome\User` Data\Default\Cache\Cache_Data\*.* -r -force
rm -Path C:\Users\vince\AppData\Local\Google\Chrome\User` Data\Default\GPUCache\*.* -r -force
rm -Path C:\Users\vince\Downloads\*.* -r -force
rm -Path C:\Windows\SoftwareDistribution\*.* -r -force
rm -Path C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.* -r -force
rm -Path C:\Users\vince\AppData\Local\Microsoft\Windows\Explorer\*.* -r -force
Optimize-Volume -DriveLetter C -ReTrim -Defrag -TierOptimize 
Optimize-Volume -DriveLetter D -ReTrim -Defrag -TierOptimize 
wsreset.exe
ipconfig /flushdns
Read-Host -Prompt "Press Enter to exit"