#!/data/data/com.termux/files/usr/bin/bash

me="launch"
project="/sdcard/Termux"
comp_name="$me-completion"

# /data/data/com.termux/files/usr/bin
bin="$PREFIX/bin"

# /sdcard/Termux/bash/launch-completion.bash
comp() {
  echo "$(realpath $project/$1/$comp_name.$1)"
}

comp_install() {
  echo -e "\n\nsource $1" >> "$2"
}

if command -v launch &>/dev/null; then # Check if launch command exists
  echo "Installed already on '$(which launch)'"
  exit
fi

install_source() {
  completion="$(comp $1)"
  if ! grep -qs "$completion" "$2"; then
    comp_install "$completion" "$2"
  fi
}

install "$project/$me" "$bin" # install already can chmod

case "$(basename $SHELL)" in # Get shell
  zsh) install_source zsh ~/.zshrc;;
  bash) install_source bash ~/.bashrc;;
  fish) install_source fish ~/.config/fish/completions/$me.fish;;
esac

echo "launch installed on '$(which launch)'"

