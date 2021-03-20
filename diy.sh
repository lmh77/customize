[ ! -d "/jd/diyscripts" ] && mkdir -p /jd/diyscripts
echo "--------------------------------------------------------------------------------"
echo "Git获取https://github.com/lmh77/customize"
[ ! -d "/jd/diyscripts/lmh77_customize/.git" ]  \
        && git clone https://github.com/lmh77/customize.git /jd/diyscripts/lmh77_customize \
        && chmod +x /jd/diyscripts/lmh77_customize/*.sh \
        && cp -f /jd/diyscripts/lmh77_customize/sendinfo.sh /jd/scripts/sendinfo.sh \
        && cp -f /jd/diyscripts/lmh77_customize/sendinfo.js /jd/scripts/sendinfo.js \
        && chmod +x /jd/scripts/sendinfo.sh
cd /jd/diyscripts/lmh77_customize && git pull
echo "--------------------------------------------------------------------------------"
echo -e "开始获取自定义任务......\n" \
        && echo -e "Git获取https://github.com/i-chenzhe/qx\n" \
        && bash /jd/diyscripts/lmh77_customize/git_diy.sh i-chenzhe qx \
        && echo -e "Git获取https://github.com/cui521/jdqd\n" \
        && bash /jd/diyscripts/lmh77_customize/git_diy.sh cui521 jdqd
        
echo "--------------------------------------------------------------------------------"

exit