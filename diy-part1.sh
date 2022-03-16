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
cd lede/package
#↓此仓库包内容第一选择#
git clone https://github.com/fszok/fz-package.git
git clone https://github.com/kenzok8/openwrt-packages.git kenzok8-op-packages
git clone https://github.com/kenzok8/small.git kenzok8-small

#↓删除重复插件（与kenzok8/openwrt-packages重复）#
rm -rf fz-package/ddnsto/
rm -rf fz-package/gost/
rm -rf fz-package/lua-maxminddb/
rm -rf fz-package/luci-app-advanced/
rm -rf fz-package/luci-app-aliddns/
rm -rf fz-package/luci-app-ddnsto/
rm -rf fz-package/luci-app-dnsfilter/
rm -rf fz-package/luci-app-eqos/
rm -rf fz-package/luci-app-fileassistant/
rm -rf fz-package/luci-app-filebrowser/
rm -rf fz-package/luci-app-gost/
rm -rf fz-package/luci-app-serverchan/
rm -rf fz-package/luci-app-smartdns/
rm -rf fz-package/luci-theme-edge/
rm -rf fz-package/luci-theme-ifit/
rm -rf fz-package/luci-theme-mcat/
#↓删除重复插件（与/kenzok8/small重复）
rm -rf kenzok8-op-packages/v2ray-geodata/

#↓只取有用的#
git clone https://github.com/liuran001/openwrt-packages.git liuran001-op-pacakages2
mkdir liuran001-op-pacakages
mv liuran001-op-pacakages2/3ginfo liuran001-op-pacakages/3ginfo
mv liuran001-op-pacakages2/3proxy liuran001-op-pacakages/3proxy
mv liuran001-op-pacakages2/GoQuiet liuran001-op-pacakages/GoQuiet
mv liuran001-op-pacakages2/atinout liuran001-op-pacakages/atinout
mv liuran001-op-pacakages2/chinadns liuran001-op-pacakages/chinadns
mv liuran001-op-pacakages2/ddns-scripts_aliyun liuran001-op-pacakages/ddns-scripts_aliyun
mv liuran001-op-pacakages2/ddns-scripts_dnspod liuran001-op-pacakages/ddns-scripts_dnspod
mv liuran001-op-pacakages2/dnscrypt-proxy liuran001-op-pacakages/dnscrypt-proxy
mv liuran001-op-pacakages2/luci-app-3ginfo liuran001-op-pacakages/luci-app-3ginfo
mv liuran001-op-pacakages2/luci-app-UUGameAcc liuran001-op-pacakages/luci-app-UUGameAcc
mv liuran001-op-pacakages2/luci-app-atinout liuran001-op-pacakages/luci-app-atinout
mv liuran001-op-pacakages2/luci-app-chinadns-ng liuran001-op-pacakages/luci-app-chinadns-ng
mv liuran001-op-pacakages2/luci-app-koolproxyR liuran001-op-pacakages/luci-app-koolproxyR
mv liuran001-op-pacakages2/luci-app-nodogsplash liuran001-op-pacakages/luci-app-nodogsplash
mv liuran001-op-pacakages2/luci-app-pcap-dnsproxy liuran001-op-pacakages/luci-app-pcap-dnsproxy
mv liuran001-op-pacakages2/luci-app-tcpdump liuran001-op-pacakages/luci-app-tcpdump
mv liuran001-op-pacakages2/luci-theme-argon-lr liuran001-op-pacakages/luci-theme-argon-lr
mv liuran001-op-pacakages2/luci-theme-infinityfreedom liuran001-op-pacakages/luci-theme-infinityfreedom
mv liuran001-op-pacakages2/node-request liuran001-op-pacakages/node-request
mv liuran001-op-pacakages2/parted liuran001-op-pacakages/parted
mv liuran001-op-pacakages2/pcap-dnsproxy liuran001-op-pacakages/pcap-dnsproxy
mv liuran001-op-pacakages2/udpspeeder liuran001-op-pacakages/udpspeeder
rm -rf liuran001-op-pacakages2/

#↓此仓库包内容自动同步上游全面的选择#
git clone https://github.com/kiddin9/openwrt-packages.git kiddin9-op-packages
#↓删除重复插件（与上面仓库重复）#
rm -rf kiddin9-op-packages/UnblockNeteaseMusic/
rm -rf kiddin9-op-packages/adguardhome/
rm -rf kiddin9-op-packages/aliyundrive-webdav/
rm -rf kiddin9-op-packages/app-store-ui/
rm -rf kiddin9-op-packages/brook/
rm -rf kiddin9-op-packages/chinadns-ng/
rm -rf kiddin9-op-packages/cpulimit/
rm -rf kiddin9-op-packages/dat/
rm -rf kiddin9-op-packages/ddnsto/
rm -rf kiddin9-op-packages/dns2socks/
rm -rf kiddin9-op-packages/filebrowser/
rm -rf kiddin9-op-packages/gost/
rm -rf kiddin9-op-packages/gowebdav/
rm -rf kiddin9-op-packages/haproxy/
rm -rf kiddin9-op-packages/hysteria/
rm -rf kiddin9-op-packages/ipt2socks/
rm -rf kiddin9-op-packages/lua-maxminddb/
rm -rf kiddin9-op-packages/luci-app-adguardhome/
rm -rf kiddin9-op-packages/luci-app-advanced/
rm -rf kiddin9-op-packages/luci-app-aliddns/
rm -rf kiddin9-op-packages/luci-app-aliyundrive-webdav/
rm -rf kiddin9-op-packages/luci-app-argon-config/
rm -rf kiddin9-op-packages/luci-app-bypass/
rm -rf kiddin9-op-packages/luci-app-control-timewol/
rm -rf kiddin9-op-packages/luci-app-control-webrestriction/
rm -rf kiddin9-op-packages/luci-app-control-weburl/
rm -rf kiddin9-op-packages/luci-app-cpulimit/
rm -rf kiddin9-op-packages/luci-app-ddnsto/
rm -rf kiddin9-op-packages/luci-app-dnsfilter/
rm -rf kiddin9-op-packages/luci-app-dockerman/
rm -rf kiddin9-op-packages/luci-app-easyupdate/
rm -rf kiddin9-op-packages/luci-app-eqos/
rm -rf kiddin9-op-packages/luci-app-fileassistant/
rm -rf kiddin9-op-packages/luci-app-filebrowser/
rm -rf kiddin9-op-packages/luci-app-gost/
rm -rf kiddin9-op-packages/luci-app-gowebdav/
rm -rf kiddin9-op-packages/luci-app-jd-dailybonus/
rm -rf kiddin9-op-packages/luci-app-mosdns/
rm -rf kiddin9-op-packages/luci-app-netdata/
rm -rf kiddin9-op-packages/luci-app-netkeeper-interception/
rm -rf kiddin9-op-packages/luci-app-oaf/
rm -rf kiddin9-op-packages/luci-app-onliner/
rm -rf kiddin9-op-packages/luci-app-openclash/
rm -rf kiddin9-op-packages/luci-app-passwall/
rm -rf kiddin9-op-packages/luci-app-poweroff/
rm -rf kiddin9-op-packages/luci-app-pushbot/
rm -rf kiddin9-op-packages/luci-app-serverchan/
rm -rf kiddin9-op-packages/luci-app-socat/
rm -rf kiddin9-op-packages/luci-app-ssr-mudb-server/
rm -rf kiddin9-op-packages/luci-app-ssr-plus/
rm -rf kiddin9-op-packages/luci-app-store/
rm -rf kiddin9-op-packages/luci-app-syncthing/
rm -rf kiddin9-op-packages/luci-app-tencentddns/
rm -rf kiddin9-op-packages/luci-app-ttnode/
rm -rf kiddin9-op-packages/luci-app-unblockneteasemusic/
rm -rf kiddin9-op-packages/luci-app-vssr/
rm -rf kiddin9-op-packages/luci-theme-argon/
rm -rf kiddin9-op-packages/luci-theme-edge/
rm -rf kiddin9-op-packages/microsocks/
rm -rf kiddin9-op-packages/mosdns/
rm -rf kiddin9-op-packages/naiveproxy/
rm -rf kiddin9-op-packages/pdnsd-alt/
rm -rf kiddin9-op-packages/redsocks2/
rm -rf kiddin9-op-packages/shadowsocks-rust/
rm -rf kiddin9-op-packages/shadowsocksr-libev/
rm -rf kiddin9-op-packages/simple-obfs/
rm -rf kiddin9-op-packages/smartdns/
rm -rf kiddin9-op-packages/ssocks/
rm -rf kiddin9-op-packages/tcping/
rm -rf kiddin9-op-packages/trojan-go/
rm -rf kiddin9-op-packages/trojan-plus/
rm -rf kiddin9-op-packages/trojan/
rm -rf kiddin9-op-packages/v2ray-core/
rm -rf kiddin9-op-packages/v2ray-geodata/
rm -rf kiddin9-op-packages/v2ray-plugin/
rm -rf kiddin9-op-packages/v2raya/
rm -rf kiddin9-op-packages/xray-core/
rm -rf kiddin9-op-packages/xray-plugin/


#↓IPTV助手#
#可以用/kiddin9/openwrt-packages或者kenzok8/的这两个里面的有中文
#git clone https://github.com/kenzok8/small-package.git kenzok8-smallpackage
#mkdir smallpackage111
#mv kenzok8-smallpackage/iptvhelper smallpackage111/iptvhelper
#mv kenzok8-smallpackage/luci-app-iptvhelper smallpackage111/luci-app-iptvhelper
#rm -rf kenzok8-smallpackage/
#git clone https://github.com/riverscn/openwrt-iptvhelper.git
#mv openwrt-iptvhelper/luci-app-iptvhelper/po/zh_Hans/ openwrt-iptvhelper/luci-app-iptvhelper/po/zh-cn
#git clone https://github.com/liuran001/openwrt-packages.git liuran001-pack
#mkdir liuran001
#mv liuran001-pack/iptvhelper liuran001/iptvhelper
#mv liuran001-pack/luci-app-iptvhelper liuran001/luci-app-iptvhelper
#rm -rf liuran001-pack/

#↓netdata#
git clone https://github.com/sirpdboy/luci-app-netdata.git
#↓高级设置 删除了文件管理器 不会导致冲突#
这个里面也包括了或者/fszok/fz-package
git clone https://github.com/fszok/luci-app-advanced.git

#↓腾讯云ddns 目录在服务菜单中#
#git clone https://github.com/MapesxGM/luci-app-tencentddns.git

#↓高级设置#
#这个里面包含了/fszok/fz-package或者单独
#git clone https://github.com/fszok/luci-app-advancedsetting.git

#↓mentohust认证#
#git clone https://github.com/BoringCat/luci-app-mentohust.git
#git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git

#↓godproxy广告过滤上面已有暂时不用这个#
#git clone https://github.com/project-lede/luci-app-godproxy.git

#↓另一种翻墙，已经再其他库中包含 #
#git clone https://github.com/garypang13/luci-app-bypass.git

#↓定时设置插件（比自带的autoreboot功能多一些，二选一，也可同时选择编译成功，然后选择1个使用）#
#这两个kenzok8/small-package和kiddin9/openwrt-packages里面包含了或者
#git clone https://github.com/sirpdboy/luci-app-autotimeset.git

#↓一款流量统计插件#
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git

#↓beardropper ssh防御脚本#
#这两个kenzok8/small-package和kiddin9/openwrt-packages里面包含了或者单独
#git clone https://github.com/NateLol/luci-app-beardropper.git
#mv luci-app-beardropper/po/zh_Hans/ luci-app-beardropper/po/zh-cn

#↓ddnsto和linkease#
#这两个kenzok8/small-package和kiddin9/openwrt-packages里面包含了或者
#git clone https://github.com/linkease/nas-packages.git
#git clone https://github.com/linkease/nas-packages-luci.git
#xray server ?#
#git clone https://github.com/honwen/luci-app-xray.git

#↓灵缇游戏加速器（收费的）#
#git clong https://github.com/esirplayground/LingTiGameAcc.git
#git clone https://github.com/esirplayground/luci-app-LingTiGameAcc.git

#↓以下仓库独立特定插件单独地址（上面的包里都包含这里只用于单独使用）#
#git clone https://github.com/fw876/helloworld.git
#git clone https://github.com/destan19/OpenAppFilter.git
#git clone https://github.com/vernesong/OpenClash.git
#git clone https://github.com/Dreamacro/clash.git
#git clone https://github.com/awesome-openwrt/syncthing.git
#git clone https://github.com/awesome-openwrt/luci-app-syncthing.git

#↓使用这个freifunk仓库需要以下内容#
#git clone https://github.com/superabbite1/luci1.git
#git clone https://github.com/freifunk/openwrt-packages.git freifunk
#rm -rf ./feeds
#make distclean
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#cd..
#rm -rf ./feeds
#make distclean
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#./scripts/feeds update freifunk
#./scripts/feeds install -a -p freifunk
