# FUD-logger

This script here is Windows keylogger written in Ruby. Before reading this you should see the source code!
You can check that it's `FUD by any AV` for free on virustotal.com

# How it works?

It makes txt file (which you can hide depending on your target with non-suspicious name) and whenever the script is run it uploads keystrokes to FTP server you enter, deletes log file from local machine and makes new one that is waiting for it to be uploaded right onto your FTP.
I recommend making vbs/bat file which will autorun it whenever PC boots so you get new keystrokes whenever it's on because of it simple process, and you should definitely convert this .rb file to .exe file.

# How to run it?

If you don't convert it to exe, you need to download the following libraries: `win32api`, `net-ftp`, `open-uri` as well as original ruby compiler + devkit:
https://rubyinstaller.org/downloads/

# Disclaimer

I am not responsible for any misuse of my script. It is made for entertaiment/educational purposes only. But if you do use it, hide it, rename log file and you should use eb2a.com for free hosting of your FTP server... and have fun!

KEEP CALM AND
 ____         ____ _  _ ____   ___   ___  ____    _____ _   _ _____
| __ )  / \  / ___| |/ /  _ \ / _ \ / _ \|  _ \  |_   _| | | | ____|
|  _ \ / _ \| |   | ' /| | | | | | | | | | |_) |   | | | |_| |  _|  
| |_) / ___ \ |___| . \| |_| | |_| | |_| |  _ <    | | |  _  | |___ 
|____/_/   \_\____|_|\_\____/ \___/ \___/|_| \_\   |_| |_| |_|_____|
                                                                    
 ____  _        _    _   _ _____ _____ 
|  _ \| |      / \  | \ | | ____|_   _|
| |_) | |     / _ \ |  \| |  _|   | |  
|  __/| |___ / ___ \| |\  | |___  | |  
|_|   |_____/_/   \_\_| \_|_____| |_|
