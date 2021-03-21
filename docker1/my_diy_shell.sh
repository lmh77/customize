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
