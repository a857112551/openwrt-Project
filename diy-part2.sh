#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

# 修改插件名字

sed -i 's/"终端"/"TTYD"/g' `egrep "终端" -rl ./`
sed -i 's/"aMule设置"/"电驴下载"/g' `egrep "aMule设置" -rl ./`
sed -i 's/"网络存储"/"NAS"/g' `egrep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `egrep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"Turbo ACC网络加速"/"网络加速"/g' `egrep "Turbo ACC网络加速" -rl ./`
sed -i 's/"实时流量监测"/"流量"/g' `egrep "实时流量监测" -rl ./`
sed -i 's/"KMS 服务器"/"KMS激活"/g' `egrep "KMS 服务器" -rl ./`
sed -i 's/"KMS Server"/"KMS激活"/g' `egrep "KMS Server" -rl ./`
sed -i 's/"TTYD 终端"/"TTYD"/g' `egrep "TTYD 终端" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `egrep "USB 打印服务器" -rl ./`
sed -i 's/"Web 管理"/"Web管理"/g' `egrep "Web 管理" -rl ./`
sed -i 's/"管理权"/"改密码"/g' `egrep "管理权" -rl ./`
sed -i 's/"带宽监控"/"监控"/g' `egrep "带宽监控" -rl ./`
sed -i 's/"Dashboard"/"首页"/g' `egrep "Dashboard" -rl ./`
sed -i 's/"PowerOff"/"关机"/g' `egrep "PowerOff" -rl ./`
sed -i 's/"网络加速"/"Turbo Acc网络加速"/g' `egrep "网络加速" -rl ./`
sed -i 's/"Disk Man"/"磁盘管理"/g' `egrep "Disk Man" -rl ./`
sed -i 's/"Scheduled Reboot"/"定时重启"/g' `egrep "Scheduled Reboot" -rl ./`
sed -i 's/"AutoUpdate"/"在线升级"/g' `egrep "AutoUpdate" -rl ./`
sed -i 's/"Partition_Expansion"/"分区扩容"/g' `egrep "Partition_Expansion" -rl ./`
sed -i 's/"GoWebDav"/"WebDav"/g' `egrep "GoWebDav" -rl ./`

#rm -rf ./package/diy-ziyong/theme
#rm -rf ./package/diy-ziyong/luci-app-wrtbwmon-zh
#rm -rf ./package/diy-ziyong/wrtbwmon
#rm -rf ./feeds/packages/net/adguardhome
#rm -rf ./feeds/packages/net/smartdns
#rm -rf ./feeds/packages/net/mosdns
#rm -rf ./feeds/luci/applications/luci-app-passwall
#rm -rf ./feeds/luci/applications/luci-app-ssr-plus
#rm -rf ./feeds/luci/applications/luci-app-openclash
#rm -rf ./feeds/luci/applications/luci-app-smartdns
