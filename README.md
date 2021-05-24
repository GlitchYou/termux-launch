# Termux-Launcher
Launch apps on Termux

![demo](https://j.gifs.com/mqZP5E.gif?download=true)

### Install

- Install Termux Launch on [realease](https://github.com/GlitchYou/termux-launch/releases/tag/1.0)
- Open the app and it will show a dialog
- Click ok to proceed with the installation
- When finished, open Termux and perform this action `bash /sdcard/Termux/install.sh`
- Close and open Termux again

### Uninstall

    rm ~/..usr/bin/launch
    sed 's/source /sdcard/Termux/launch-completion.bash//' > ~/.bashrc

### How to use

    $ launch --help
    Usage:
      launch [ options... ] app_name
      Launch apps on android
      
           -i --info   show app settings
           -h --help   show help


    $ launch playstore
    Starting playstore...
    ...


    $ launch -i tasker
    Starting info tasker...
    ...

##### Import this project

> I did this project with the help of [Tasker](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm)

To add new functions or see how this project works import it by clicking [here](https://taskernet.com/shares/?user=AS35m8lZFkvcWqyrgtPNlB2Mh52ouETCHLjBo4o18oCQ0xa81fNP%2Fw5ZsXNm7UpARlC3g9C%2BsFR3pw%3D%3D&id=Project%3ATermux%3ALaunch)


   
