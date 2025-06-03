function gch
  set branch (git rev-parse --abbrev-ref HEAD)
  if test -n "$argv"
    git checkout $argv
  else
    git checkout $branch
  end
end
