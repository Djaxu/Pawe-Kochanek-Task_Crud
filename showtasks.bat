call runcrud
if "%ERRORLEVEL%" == "0" goto openChrome
echo.
echo Program ERROR - ending work
goto fail

:openChrome
start chrome http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo FAIL TO OPEN CHROME
goto fail


:fail
echo.
echo There were errors

:end
echo.
echo ShowTasks finished its work
