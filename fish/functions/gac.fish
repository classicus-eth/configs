function gac
  git add .
  git commit -S -m $argv[1]
  git push -u origin HEAD
end
