ncExtract
=========
This script steals all valuable data from namecoin.
it defaults to E-mail addresses and Bitmessage addresses,
but you are free to extend it's capabilities easily.

## How to use
* [Install Namecoin](http://dot-bit.org/InstallAndConfigureNamecoin)
* put the 3 files (getNames.bat, code.js, index.html) into the same Directory.
* Wait for namecoin to sync it's completely oversized blockchain. (use the graphical interface instead of namecoind.exe for syncing to get a progress bar)
* Close the GUI and run namecoind.exe
* Wait 5 to 10 minutes for it to initialize.
* Leave it running and start getNames.bat (namecoind.exe does not produces any output at all, this is normal)
* After getNames.bat finished, open index.html in Mozilla Firefoy or Google Chrome.
* Laugh at all people who put their E-Mail address and other private informations in it.
* Feel free to modify code.js and index.html

## Notes
DNS.js and ID.js are not present on github. They are created once getNames.bat has been started.
