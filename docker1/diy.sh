mkdir -p /dust/tmp
cd /dust/tmp
ichenzhe="$(curl -sX POST "https://share.r2ray.com/dust/i-chenzhe/" | jq | grep name | grep js | cut -f4 -d\" | grep -v "json\|getFanslove" | sed 's/^/https:\/\/share\.r2ray\.com\/dust\/i-chenzhe\//g' | tr "\n" " ")"
car="$(curl -sX POST "https://share.r2ray.com/dust/car/" | jq | grep name | grep js | cut -f4 -d\" | grep -v "json" | sed 's/^/https:\/\/share\.r2ray\.com\/dust\/car\//g' | tr "\n" " ")"
member="$(curl -sX POST "https://share.r2ray.com/dust/member/" | jq | grep name | grep js | cut -f4 -d\" | grep -v "json" | sed 's/^/https:\/\/share\.r2ray\.com\/dust\/member\//g' | tr "\n" " ")"
normal="$(curl -sX POST "https://share.r2ray.com/dust/normal/" | jq | grep name | grep js | cut -f4 -d\" | grep -v "json" | sed 's/^/https:\/\/share\.r2ray\.com\/dust\/normal\//g' | tr "\n" " ")"
wget  -q --no-check-certificate $ichenzhe $car $member $normal
cp -rf /dust/tmp/*.js /dust/
rm -rf /dust/tmp/*
cd /dust
for scriptFile in $(ls *.js | tr "\n" " "); do
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
        echo "$(sed -n "s/.*cronexpr=\"\(.*\)\".*/\1/p" $scriptFile) node /scripts/$scriptFile |ts >>/scripts/logs/$(echo $scriptFile | sed "s/.js/.log/g") 2>&1 &" >>/scripts/docker/merged_list_file.sh
    fi
done
