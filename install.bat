IF EXIST "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods\Infrastructure Pack" (
    rmdir "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods\Infrastructure Pack" /s /q
)
echo d | xcopy /s /e "./Infrastructure Pack" "%UserProfile%\Documents\My Games\Gas Powered Games\Supreme Commander Forged Alliance\Mods\Infrastructure Pack"