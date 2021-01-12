function fish_right_prompt
  set -l last_status $status

  if test "$CMD_DURATION" -gt 2000
    set -l duration_copy $CMD_DURATION
    set -l duration (humantime $CMD_DURATION)
    echo -sn (tput setaf 59) "($duration) "
  end	

  if test $last_status = 0
    set_color 888
  else
    set_color red
  end
  date "+%T"
  set_color normal
end
