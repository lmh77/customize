lxk0301=($(cd /scripts; ls *.js | grep -v "z_" |grep -E "j[drx]_"|grep -v "jd_crazy_joy_coin"| grep -v "jd_getFanslove"))
for ((i=0; i<${#lxk0301[*]}; i++));
    do
      . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/${lxk0301[i]} |ts >>/scripts/logs/${lxk0301[i]}.log 2>&1 &
done

diytask=($(cd ${ScriptsDir}; ls *.js | grep -E "z_"))
for ((i=0; i<${#diytask[*]}; i++));
    do
      . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/${diytask[i]} |ts >>/scripts/logs/${diytask[i]}.log 2>&1 &
done
echo "后台执行任务..."
