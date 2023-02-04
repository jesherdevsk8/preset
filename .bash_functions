# ADD INTO YOUR .bashrc
# if in a git repository, shows the current branch
gitBranch() {
  ret="$?"
  branch="$(git branch --show-current 2> /dev/null)" \
    && echo "(${branch})"
  return "${ret}"
}
# check process
function pcheck() {
  local verde="\033[0;32m"
  local tira="\033[0m"

  #Ver os processos que mais estão consumindo na máquina
  processos=$(ps -e -o pid --sort -size | head -n 11 | grep [0-9])
  for pid in $processos; do
      nomes=$(ps -p $pid -o comm=)
      formatado="${verde}Nome:${tira} $nomes  ${verde}PID:${tira} $pid"
      semcor="Nome: $nomes  PID: $pid"
      echo -e "$formatado"
  done
}
