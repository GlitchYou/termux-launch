_launch() {
  _options() {
    compgen -W "app info update help" -- "${COMP_WORDS[1]}"
  }

  _apps() {
    compgen -W "$(cat /sdcard/Termux/apps)" -- "${COMP_WORDS[2]}"
  }


  case "${#COMP_WORDS[@]}" in
    2)
      COMPREPLY=($(_options))
      ;;
    3)
      if [[ 'app info' == *"${COMP_WORDS[1]}"* ]]
      then
        COMPREPLY=($(_apps))
      fi
      ;;
  esac
}

complete -F _launch launch
