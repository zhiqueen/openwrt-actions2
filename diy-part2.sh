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

# 修改默认IP
sed -i 's/192.168.1.1/192.168.66.1/g' package/base-files/files/bin/config_generate
# 修改默认主题为argon
sed -i s/luci-theme-bootstrap/luci-theme-argon/g feeds/luci/collections/luci/Makefile
# 修改密码为空，自定义名称
ZZZ=package/lean/default-settings/files/zzz-default-settings
sed -i /CYXluq4wUazHjmCDBCqXF/d $ZZZ
sed -i s/OpenWrt /Xiaozao Game Studio compiled in $(TZ=UTC-8 date +%Y.%m.%d) @ OpenWrt /g $ZZZ（#为自定义内容）
