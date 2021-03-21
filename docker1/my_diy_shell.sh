#!/bin/sh

wget -q --no-check-certificate -O /scripts/ziyescript_bububao.js https://raw.githubusercontent.com/6Svip120apk69/gitee_q8qsTAUA_cThxc1RBVUE/main/Task/bububao.js
wget -q --no-check-certificate -O /scripts/moposmall_jx_cfd_exchange.js https://raw.githubusercontent.com/moposmall/Script/main/Me/jx_cfd_exchange.js
wget -q --no-check-certificate -O /scripts/cui521_DIY_shopsign.js https://raw.githubusercontent.com/cui521/jdqd/main/DIY_shopsign.js


(
    cat <<EOF
let bububaotokenVal = \`***********************\`
let bububaocookie = {
    bububaotokenVal: bububaotokenVal,
}
module.exports = bububaocookie
EOF
) >/scripts/bububaoCOOKIE.js

# COPY from https://github.com/iouAkira/someDockerfile/tree/master/jd_scripts
crontab -l > /scripts/befor_cronlist.sh

echo "附加功能1，cookie写入文件，为jd_bot扫码获自动取cookies服务"
if [ 0"$JD_COOKIE" = "0" ]; then
    if [ -f "$COOKIES_CONF" ]; then
        echo '' >$COOKIES_CONF
        echo "未配置JD_COOKIE环境变量，$COOKIES_CONF文件已生成,请将cookies写入$COOKIES_CONF文件，格式每个Cookie一行"
    fi
else
    if [ -f "$COOKIES_CONF" ]; then
        echo "cookies.conf文件已经存在跳过,如果需要更新cookie请修改$COOKIES_CONF文件内容"
    else
        echo "环境变量 cookies写入$COOKIES_CONF文件,如果需要更新cookie请修改cookies.conf文件内容"
        echo $JD_COOKIE | sed "s/\( &\|&\)/\\n/g" >$COOKIES_CONF
    fi
fi

echo "附加功能2，拉取 i-chenzhe 仓库的代码，并增加相关任务"
if [ -d "/i-chenzhe" ]; then
    cd /i-chenzhe
    git reset --hard
    echo "git pull拉取最新代码..."
    git -C /i-chenzhe pull --rebase
else
    git clone https://github.com/i-chenzhe/qx.git /i-chenzhe
fi

cd /i-chenzhe
for scriptFile in $(ls | grep -E "jd_|z_" | tr "\n" " "); do
    if [ -n "$(sed -n "s/.*cronexpr=\"\(.*\)\".*/\1/p" $scriptFile)" ]; then
        cp $scriptFile /scripts
        if [ -z "$(cat /scripts/befor_cronlist.sh | grep $scriptFile)" ]; then
            if [ $1 ];then
                echo "skip"
            else
                echo "发现以前crontab里面不存在的任务，先跑为敬 $scriptFile"
                nohup node /scripts/$scriptFile |ts >>/scripts/logs/$(echo $scriptFile | sed "s/.js/.log/g") 2>&1 &
            fi
        fi
        echo "#$(sed -n "s/.*new Env('\(.*\)').*/\1/p" $scriptFile)" >>/scripts/docker/merged_list_file.sh
        echo "$(sed -n "s/.*cronexpr=\"\(.*\)\".*/\1/p" $scriptFile) spnode /scripts/$scriptFile |ts >>/scripts/logs/$(echo $scriptFile | sed "s/.js/.log/g") 2>&1 &" >>/scripts/docker/merged_list_file.sh
    fi
done
crontab -l > /scripts/logs/.crontab.sh
