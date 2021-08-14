#!/data/data/com.termux/files/usr/bin/bash

location='/sdcard/Android/data/com.termux.launch/'

# /data/data/com.termux/files/usr/bin
bin="$PREFIX/bin"

bash_completion() {
	complete="source $location/launch-completion.bash"
	echo -e "\n\n$complete" >> ~/.bashrc
}

zsh_completion() {

}

fish_completion() {

}

if command -v launch &>/dev/null; then # Check if launch command exists
  echo "Installed already on '$(which launch)'"
  exit
fi

install_source() {
  if ! grep -qs "$complete" "$1"; then
    echo -e "\n\n$complete" >> "$1"
  fi
}

install "$location"/launch "$bin" # install already can chmod

case "$(basename $SHELL)" in # Get shell
  'zsh') install_source ~/.zshrc;;
  'bash') install_source ~/.bashrc;;
  'fish') install_source ~/.config/fish/config.fish;;
esac

echo "launch installed on '$(which launch)'"
