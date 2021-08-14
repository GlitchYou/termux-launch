# Termux-Launch
Launch apps on Termux

![demo](https://j.gifs.com/mqZP5E.gif?download=true)

### Install

- Install Termux Launch on [realease](https://github.com/GlitchYou/termux-launch/releases/tag/1.0)
- Open the app and it will show a dialog
- Click ok to proceed with the installation
- When finished, open Termux and perform this action `bash /sdcard/Termux/install.sh`
- Close and open Termux again

### Uninstall

```bash
rm -f $(which launch)
sed -i 's|.*launch-completion.bash||' ~/.bashrc # Replace ~/.bashrc with your shell's config file
```

### How to use

    $ launch --help
    Usage:
      launch [ -a --app <app_name> ] [ -i --info <app_name> ] [ -u -update ] [ -h --help ]
        Launch apps on android
      
      -a --app       -- open app
      -i --info      -- show app settings
      -u --update    -- load all apps
      -h --help      -- show help
 
    $ launch -a playstore
    Starting playstore...
    ...

    $ launch -i tasker
    Starting info tasker...
    ...

    $ launch -u
    Loadings Apps...
    ...

##### Import this project

> I did this project with the help of [Tasker](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm)

To add new functions or see how this project works import it by clicking [here](https://taskernet.com/shares/?user=AS35m8lZFkvcWqyrgtPNlB2Mh52ouETCHLjBo4o18oCQ0xa81fNP%2Fw5ZsXNm7UpARlC3g9C%2BsFR3pw%3D%3D&id=Project%3ATermux%3ALaunch)
