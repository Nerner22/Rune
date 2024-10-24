@echo off
setlocal
set CLIENT_HOME=%~dp0
set RT_JAR=%CLIENT_HOME%rt.jar
set CLIENT_JAR=%CLIENT_HOME%Client.jar
if not exist "%RT_JAR%" (
  echo rt.jar not found at "%RT_JAR%"
  pause
  exit /b 1
)
if not exist "%CLIENT_JAR%" (
  echo Client.jar not found at "%CLIENT_JAR%"
  pause
  exit /b 1
)
set CLASSPATH=%CLIENT_JAR%;%RT_JAR%
java -cp "%CLASSPATH%" Client
pause
exit /b 0