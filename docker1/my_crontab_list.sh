#################自定义任务列表############
*/30 * * * * sh /scripts/docker/my_diy_shell.sh
0 8,20 * * * node /scripts/cui521_DIY_shopsign.js >> /scripts/logs/cui521_DIY_shopsign.js.log 2>&1
30 6,12,22 * * * node /scripts/moposmall_jx_cfd_exchange.js |ts >> /scripts/logs/moposmall_jx_cfd_exchange.js 2>&1
0,30 0-23 * * * node /scripts/ziyescript_bububao.js |ts >> /scripts/logs/ziyescript_bububao.log 2>&1
##########################################
