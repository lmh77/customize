[ ! -d "/jd/diyscripts" ] && mkdir -p /jd/diyscripts
echo "--------------------------------------------------------------------------------"
echo "Git获取https://github.com/lmh77/customize"
[ ! -d "/jd/diyscripts/lmh77_customize/.git" ]  && git clone https://github.com/lmh77/customize.git /jd/diyscripts/lmh77_customize

cd /jd/diyscripts/lmh77_customize && git reset --hard && git pull \
        && cp -f /jd/diyscripts/lmh77_customize/sendinfo.sh /jd/scripts/sendinfo.sh \
        && cp -f /jd/diyscripts/lmh77_customize/sendinfo.js /jd/scripts/sendinfo.js \
        && chmod +x /jd/scripts/sendinfo.sh \
        && ln -sf cp -f /jd/diyscripts/lmh77_customize/runall.sh /usr/bin/loacl/ruanall \
        && chmod +x /usr/local/bin/runall \
        && cp -f  /jd/diyscripts/lmh77_customize/diy.sh /jd/config/diy.sh \
        && ln -sf /jd/diyscripts/lmh77_customize/diy.sh /usr/bin/loacl/diy \
        && chmod +x /usr/local/bin/diy
echo "--------------------------------------------------------------------------------"
echo -e "开始获取自定义任务......\n" \
        && echo -e "Git获取https://github.com/i-chenzhe/qx\n" \
        && bash /jd/diyscripts/lmh77_customize/git_diy.sh i-chenzhe qx \
        && echo -e "Git获取https://github.com/cui521/jdqd\n" \
        && bash /jd/diyscripts/lmh77_customize/git_diy.sh cui521 jdqd
        
echo "--------------------------------------------------------------------------------"


wget --no-check-certificate -O /jd/scripts/ziyescript_bububao.js https://raw.githubusercontent.com/6Svip120apk69/gitee_q8qsTAUA_cThxc1RBVUE/main/Task/bububao.js
exit
