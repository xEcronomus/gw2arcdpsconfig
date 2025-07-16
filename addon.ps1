# Administratorkent nyisd meg a powershellt es futtasd le ezt a commandot hogy ha nem enged power shell scriptet lefuttatni a windows
# set-executionpolicy remotesigned
# allitsd be a gw2 pathot ha mashova van telepitve
$GW2Path = "C:\Program Files\Guild Wars 2\"

Remove-Item -Path "$($GW2Path)d3d11.dll" -Force
Remove-Item -Path "$($GW2Path)addons\arcdps\arcdps.ini" -Force

New-Item -ItemType Directory -Force -Path "$($GW2Path)addons\arcdps\"
Invoke-WebRequest "https://www.deltaconnected.com/arcdps/x64/d3d11.dll" -OutFile "$($GW2Path)d3d11.dll"
Invoke-WebRequest "https://raw.githubusercontent.com/xEcronomus/gw2arcdpsconfig/refs/heads/main/arcdps.ini" -OutFile "$($GW2Path)addons\arcdps\arcdps.ini"


