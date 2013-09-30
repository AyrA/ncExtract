@ECHO OFF
IF NOT EXIST namecoind.exe GOTO NONC

CLS
ECHO This will extract all potentially private
ECHO informations from namecoin.
ECHO before continuing, leave namecoind.exe running
ECHO in the background for at least 10 minutes to sync up
ECHO with the network and verifying the blockchain. To sync with the network, you can
ECHO also use the graphical interface to get a progress bar.
ECHO this way you are able to see, when you are ready.
ECHO Press any key to start extraction.
ECHO.
ECHO WARNING!
ECHO This script overwrites DNS.js and ID.js
ECHO If you want to modify the output, only change code.js and index.html
PAUSE
GOTO EXT

:NONC
CLS
ECHO namecoind.exe not found.
ECHO You need namecoin in order for this to work.
ECHO Install the client and the api parameters
ECHO according to http://dot-bit.org/InstallAndConfigureNamecoin
ECHO.
ECHO Put this file into the namecoin directory after you finished installing.
PAUSE
GOTO END

:EXT
CLS
ECHO Please wait a minute or two for the complete process to finish...
ECHO Getting ID's...
ECHO var IDs=>ID.JS
namecoind name_filter "^id/">>ID.JS
ECHO ;>>ID.JS
ECHO Getting DNS...
ECHO var DNS=>DNS.JS
namecoind name_filter "^d/">>DNS.JS
ECHO ;>>DNS.JS
CLS
ECHO Extraction complete.
ECHO You can launch index.html now in Firefox or Chrome.
PAUSE
GOTO END

:END

