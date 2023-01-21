# ADD INTO YOUR .bashrc
# if in a git repository, shows the current branch
gitBranch() {
  ret="$?"
  branch="$(git branch --show-current 2> /dev/null)" \
    && echo "(${branch})"
  return "${ret}"
}
