###################账号配置##########################
REPO_URL=git@gitee.com:lxk0301/jd_scripts.git
JD_COOKIE=
TG_BOT_TOKEN=
TG_USER_ID=
QYWX_AM=
###################文件配置##########################
#随机延迟
RANDOM_DELAY_MAX=1
#调试模式
JD_DEBUG=
#京东UA
JD_USER_AGENT=
#追加任务
CUSTOM_LIST_FILE=my_crontab_list.sh
#自定义Shel
CUSTOM_SHELL_FILE=/scripts/docker/my_diy_shell.sh
#自动互助
ENABLE_AUTO_HELP=true
#疯狗挂机
CRZAY_JOY_COIN_ENABLE=Y

####################环境变量###########################
#京东多合一签到jd_bean_sign.js自定义延迟签到,单位毫秒.默认分批并发无延迟，延迟作用于每个签到接口，如填入延迟则切换顺序签到(耗时较长)，如需填写建议输入数字"1"，详见[此处说明](https://github.com/NobyDa/Script/blob/master/JD-DailyBonus/JD_DailyBonus.js#L93)
#京东多合一签到jd_bean_sign.js脚本运行后不推送签到结果通知，默认推送，填true表示不发送通知
#京东多合一签到jd_bean_sign.js脚本运行后推送签到结果简洁版通知，默认推送签到简洁结果，填true表示推送简洁通知，[效果图](./icon/bean_sign_simple.jpg)
JD_BEAN_STOP=
JD_BEAN_SIGN_STOP_NOTIFY=
JD_BEAN_SIGN_NOTIFY_SIMPLE=true
#东东萌宠推送开关控制京东萌宠是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
PET_NOTIFY_CONTROL=false
#东东农场推送开关控制京东农场是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
FRUIT_NOTIFY_CONTROL=false
#京东领现金推送开关控制京东领现金是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
CASH_NOTIFY_CONTROL=false
#点点券推送开关控制点点券是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
DDQ_NOTIFY_CONTROL=false
#京东赚赚小程序推送开关控制京东赚赚小程序是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
JDZZ_NOTIFY_CONTROL=false
#宠汪汪兑换京豆推送开关控制jd_joy_reward.js脚本是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
#宠汪汪喂食数量控制jd_joy_feedPets.js脚本喂食数量,可以填的数字10,20,40,80,其他数字不可.
#宠汪汪帮好友喂食控制jd_joy_steal.js脚本是否给好友喂食,false为否,true为是(给好友喂食)
#宠汪汪是否赛跑控制jd_joy.js脚本是否参加赛跑(默认参加双人赛跑),false为否,true为是，脚本默认是true
#宠汪汪参加什么级别的赛跑控制jd_joy.js脚本参加几人的赛跑,可选数字为"2","10","50"，其中2代表参加双人PK赛，10代表参加10人突围赛，50代表参加50人挑战赛(注：此项功能在"JOY_RUN_FLAG"为true的时候才生效)，如若想设置不同账号参加不同类别的比赛则用&区分即可(如下三个账号："2&10&50")
#宠汪汪宠汪汪赛跑获胜后是否推送通知控制jd_joy.js脚本宠汪汪赛跑获胜后是否推送通知，false为否(不推送通知消息),true为是(即：发送推送通知消息)
#宠汪汪赛跑自己账号内部互助输入true为开启内部互助
#宠汪汪积分兑换多少京豆目前可填值为"20"或者"500",脚本默认"0","0"表示不兑换京豆
JD_JOY_REWARD_NOTIFY=false
JOY_FEED_COUNT=80
JOY_HELP_FEED=true
JOY_RUN_FLAG=true
JOY_TEAM_LEVEL=2
JOY_RUN_NOTIFY=true
JOY_RUN_HELP_MYSELF=true
JD_JOY_REWARD_NAME=20
MARKET_COIN_TO_BEANS=0
#东东超市兑换京豆数量控制jd_blueCoin.js兑换京豆数量,可输入值为"20"或者"1000"的数字或者其他商品的名称,例如"碧浪洗衣凝珠"
#东东超市兑换奖品推送开关控制jd_blueCoin.js兑换奖品成功后是否静默运行,false为否(发送推送通知消息),true为是(即：不发送推送通知消息)
#东东超市自动参加PK队伍每次pk活动参加作者创建的pk队伍,true表示参加,false表示不参加
#东东超市抽奖每天运行脚本是否使用金币去抽奖,true表示抽奖,false表示不抽奖
MARKET_REWARD_NOTIFY=false
JOIN_PK_TEAM=true
SUPERMARKET_LOTTERY=false
#东东农场使用水滴换豆卡东东农场使用水滴换豆卡(如果出现限时活动时100g水换20豆,此时比浇水划算,推荐换豆),true表示换豆(不浇水),false表示不换豆(继续浇水),脚本默认是浇水
FRUIT_BEAN_CARD=true
#jd_unsubscribe.js共四个参数,换行隔开.四个参数分别表示"取关商品数量","取关店铺数量","遇到此商品不再进行取关","遇到此店铺不再进行取关"，[具体使用往下看](#取关店铺secret的说明)
UN_SUBSCRIBES=999&999&iPhone12&Apple京东自营旗舰店
#疯狂的JOY循环助力疯狂的JOY循环助力，true表示循环助力,false表示不循环助力，默认不开启循环助力。
#疯狂的JOY京豆兑换疯狂的JOY京豆兑换，目前最小值为2000京豆(详情请查看活动页面-提现京豆)，默认数字"0"不开启京豆兑换。
#疯狂的JOY购买joy等级疯狂的JOY自动购买什么等级的JOY
JDJOY_HELPSELF=true
JDJOY_APPLYJDBEAN=2000
BUY_JOY_LEVEL=
#摇钱树是否卖出金果控制摇钱树脚本是否自动卖出金果兑换成金币，true卖出，false不卖出，默认false
MONEY_TREE_SELL_FRUIT=true
#东东工厂心仪商品提供心仪商品名称(请尽量填写完整和别的商品有区分度)，达到条件后兑换，如不提供则会兑换当前所选商品
FACTORAY_WANTPRODUCT_NAME=
#京喜工厂控制哪个京东账号不运行此脚本输入"1"代表第一个京东账号不运行，多个使用"&"连接，例："1&3"代表账号1和账号3不运行京喜工厂脚本，注：输入"0"，代表全部账号不运行京喜工厂脚本
DREAMFACTORY_FORBID_ACCOUNT=
#东东工厂控制哪个京东账号不运行此脚本输入"1"代表第一个京东账号不运行，多个使用"&"连接，例："1&3"代表账号1和账号3不运行东东工厂脚本，注：输入"0"，代表全部账号不运行东东工厂脚本
JDFACTORY_FORBID_ACCOUNT=
#京喜财富岛控制是否运行脚本后通知输入true为通知,不填则为不通知
CFD_NOTIFY_CONTROL=true
#京小兑自动把抽奖卷兑换为兑币,默认否输入true为自动兑换,不填则为不兑换
JD_JXD_EXCHANGE=true
#京喜农场通知控制推送开关,默认1通知级别0=只通知成熟;1=本次获得水滴>0;2=任务执行;3=任务执行+未种植种子
JXNC_NOTIFY_LEVEL=3
#城城领现金是否自动抽奖默认关闭建议活动快结束开启，默认关闭，true开启
JD_CITY_EXCHANGE=



###################互助配置##########################
#东东农场
FRUITSHARECODES=
#东东萌宠
PETSHARECODES=
#种豆得豆
PLANT_BEAN_SHARECODES=
#东东工厂
DDFACTORY_SHARECODES=
#京喜工厂
DREAM_FACTORY_SHARE_CODES=
#京东赚赚
JDZZ_SHARECODES=
#疯狂的JOY
JDJOY_SHARECODES=
#京东书店
BOOKSHOP_SHARECODES=
#签到领现金
JD_CASH_SHARECODES=
#京喜农场
JXNC_SHARECODES=
#闪购盲盒
JDSGMH_SHARECODES=
#京喜财富岛
JDCFD_SHARECODES=
#城城领现金
CITY_SHARECODES=


# #####互助码的填写规则
# >互助码如何获取：运行相应脚本后，在日志里面可以找到。
# 同一个京东账号的好友互助码用@隔开,不同京东账号互助码用&或者换行隔开,下面给一个文字示例和具体互助码示例说明
# 两个账号各两个互助码的文字示例：
# 京东账号1的shareCode1@京东账号1的shareCode2&京东账号2的shareCode1@京东账号2的shareCode2
# 两个账号各两个互助码的真实示例：
# 0a74407df5df4fa99672a037eec61f7e@dbb21614667246fabcfd9685b6f448f3&6fbd26cc27ac44d6a7fed34092453f77@61ff5c624949454aa88561f2cd721bf6&6fbd26cc27ac44d6a7fed34092453f77@61ff5c624949454aa88561f2cd721bf6
# ####取关店铺secret的说明
# >secret依次是`取关商品数`,`取关店铺数`,`遇到此商品不再进行取关`,`遇到此店铺不再进行取关`
# 例如我要取关`100`个商品，`100`个店铺，商品遇到商品关键字`iPhone12`停止取关，店铺遇到`Apple京东自营旗舰店`不再取关
# 则使用`换行`或者`&`隔开即可,
# 下面给出换行隔开示例:
# 100
# 100
# iPhone12
# Apple京东自营旗舰店
# 下面给出`&`符号隔开示例:
# 100&100&iPhone12&Apple京东自营旗舰店
# ####关于脚本推送通知频率
# >如果你填写了推送通知方式中的某一种通知所需环境变量，那么脚本通知情况如下：
# >目前默认只有jd_fruit.js,jd_pet.js,jd_bean_sign.js,jd_bean_change.js,jd_jxnc.js这些脚本(默认)每次运行后都通知
# 其余的脚本平常运行都是不通知，只有在京东cookie失效以及达到部分条件后，才会推送通知
