# Defined in - @ line 1
function tsm --wraps='transmission-remote -l' --description 'alias tsm=transmission-remote -l'
  transmission-remote -l $argv;
end
