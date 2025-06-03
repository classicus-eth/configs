function cr
  conda deactivate
  conda remove -n $argv[1] --all
end
