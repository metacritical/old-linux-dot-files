@echo off
setlocal
set rhino=c:\apps\rhino\js.jar
java -cp "%rhino%" org.mozilla.javascript.tools.shell.Main "%~dp0\jslint-rhino.js" --jslint "%~dp0\JSLint\jslint.js" %*
endlocal