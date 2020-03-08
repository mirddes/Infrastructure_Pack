@echo off
IF EXIST "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods" (

	echo Downloading Infrastructure Pack - "nightly" build (https://github.com/mirddes/Infrastructure_Pack/archive/master.zip)
	powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/mirddes/Infrastructure_Pack/archive/master.zip', 'InfrastructurePack.zip')"
	
	echo Unzipping...
	tar -xf "./InfrastructurePack.zip"
	
	echo Removing the old Infrastructure Pack mod directory...
	IF EXIST "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods\Infrastructure Pack" (
		rmdir "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods\Infrastructure Pack" /s /q
	)
	
	echo Copying Infrastructure Pack to the mods folder...
	echo .
	echo .
	echo d | xcopy /s /e /q "./Infrastructure_Pack-master/Infrastructure Pack" "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods\Infrastructure Pack"

	echo .
	echo .
	echo Cleaning up...
	del /q InfrastructurePack.zip
	rd /q /s "Infrastructure_Pack-master"
	pause
) else (
	echo Could not find the FAF mod directory... you will have to copy it manually...
	echo Download it here: https://github.com/mirddes/Infrastructure_Pack/archive/master.zip
	pause
)
