_mkconf_complete() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local prev="${COMP_WORDS[COMP_CWORD-1]}"

  case "${COMP_CWORD}" in
    1) COMPREPLY=($(compgen -W "$(${COMP_WORDS[0]} -l)" "${cur}" 2>/dev/null)) ;;
    *) COMPREPLY=() ;;
  esac
}
