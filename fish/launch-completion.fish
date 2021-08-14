alias apps='cat /sdcard/Termux/apps'

complete -c launch -e # --erase
complete -c launch -f # --no-files
complete -c launch -a (apps) -r -s a -l app -d 'open app'
complete -c launch -a (apps) -r -s i -l info -d 'open app settings' 
complete -c launch -s u -l update -d 'load all apps'
complete -c launch -s h -l help -d 'show help'
