_launch() {
  _options() {
    compgen -W "-a --app -i --info -p --package -u --update -h --help" -- "${COMP_WORDS[1]}"
  }

  _apps() {
    compgen -W "$(cat /sdcard/Termux/apps)" -- "${COMP_WORDS[2]}"
  }


  case "${#COMP_WORDS[@]}" in
    2)
      COMPREPLY=($(_options))
      ;;
    3)
      if [[ '-a --app -i --info -p --package' == *"${COMP_WORDS[1]}"* ]]
      then
        COMPREPLY=($(_apps))
      fi
      ;;
  esac
}

complete -F _launch launch
