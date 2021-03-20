ShellDir=${JD_DIR:-$(cd $(dirname $0); pwd)}
[ ${JD_DIR} ] && HelpJd=jd || HelpJd=jd.sh
ScriptsDir=${ShellDir}/scripts


diytask=($(cd ${ScriptsDir}; ls *.js | grep -E "cui521_|i-chenzhe_"))
for ((i=0; i<${#diytask[*]}; i++));
    do
      bash jd ${diytask[i]} now
done


lxk0301=($(cd ${ScriptsDir}; ls *.js | grep -v "_jd_" |grep -E "j[drx]_"|grep -v "jd_crazy_joy_coin"))
for ((i=0; i<${#lxk0301[*]}; i++));
    do
      bash jd ${lxk0301[i]} now
done
