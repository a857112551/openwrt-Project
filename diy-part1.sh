#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# Add a feed source
#sed -i '$a src-git nas https://github.com/linkease/nas-packages.git;master' feeds.conf.default
#sed -i '$a src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' feeds.conf.default
#git clone https://github.com/fw876/helloworld.git package/ssr
#git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall
#git clone https://github.com/linkease/istore.git package/istore
#git clone https://github.com/linkease/istore-ui.git package/istore-ui
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#git clone https://github.com/immortalwrt/homeproxy.git package/luci-app-homeproxy
#git clone https://github.com/v2rayA/v2raya-openwrt.git package/v2raya-openwrt
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
#git clone https://github.com/firkerword/luci-app-lucky.git package/lucky
#find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
#find ./ | grep Makefile | grep mosdns | xargs rm -f
#git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
#svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-wrtbwmon package/luci-app-wrtbwmon
#svn co https://github.com/kiddin9/openwrt-packages/trunk/wrtbwmon package/wrtbwmon
#git clone https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced
sed -i '$a src-git opentopd https://github.com/sirpdboy/sirpdboy-package' feeds.conf.default
git clone https://github.com/281677160/luci-app-autoupdate  package/luci-app-autoupdate
# git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard
# git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp
# git clone https://github.com/sirpdboy/luci-app-poweroffdevice package/luci-app-poweroffdevice
# sed -i '$a src-git luci-app-adguardhome https://github.com/rufengsuixing/luci-app-adguardhome' feeds.conf.default
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

