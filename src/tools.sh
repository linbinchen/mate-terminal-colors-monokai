#!/usr/bin/env bash
gnomeVersion="$(expr "$(mate-terminal --version)" : '.* \(.*[.].*[.].*\)$')"

# newGnome=1 if the mate-terminal version >= 1.6
if [[ ("$(echo "$gnomeVersion" | cut -d"." -f1)" = "1" && \
       "$(echo "$gnomeVersion" | cut -d"." -f2)" -ge 6) || \
       "$(echo "$gnomeVersion" | cut -d"." -f1)" -ge 2 ]]
  then newGnome="1"
  dconfdir=/org/mate/terminal/profiles
else
  newGnome=0
  gconfdir=/apps/mate-terminal/profiles
fi

die() {
  echo $1
  exit ${2:-1}
}

in_array() {
  local e
  for e in "${@:2}"; do [[ $e == $1 ]] && return 0; done
  return 1
}

to_gconf() {
    tr '\n' \: | sed 's#:$#\n#'
}

to_dconf() {
    tr '\n' '~' | sed -e "s#~\$#']\n#" -e "s#~#', '#g" -e "s#^#['#"
}
