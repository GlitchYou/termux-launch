this='/sdcard/Termux'
bin=~/../usr/bin
complete="source $this/launch-completion.bash"

if [ -e $bin/launch ]; then
  echo Already been installed
  exit
fi

install_source() {
  if ! grep -qs "$complete" "$1"; then
    echo -e "\n\n$complete" >> "$1"
  fi
}

cp $this/launch ~/
chmod +x ~/launch
install ~/launch $bin/
rm ~/launch

if [ -e ~/.zshrc ]; then
  install_source ~/.zshrc
else
  install_source ~/.bashrc
fi

echo launch installed