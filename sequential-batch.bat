SETLOCAL enabledelayedexpansion
for %%f in (%*) do (
  ## YOUR BATCH CMD
  if not "%ERRORLEVEL%"  == "0" (
    echo 失敗
    pause
    exit
  ) else (
  echo 成功
    set newName=%%f
    set newName=!newName:.EXT=.EXT.bak!
    echo !newName!
    move %%f !newName!
  )
)
