#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 说明：
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了（根据你自己需要打开或者关闭）


#源码里面几乎囊括了所有插件，所以基本不需要添加插件了


# 修改openwrt登陆地址,把下面的192.168.1.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.0.5/g' ./package/base-files/files/bin/config_generate


# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
sed -i 's/OpenWrt/OpenWrt-N1/g' ./package/base-files/files/bin/config_generate


#最新的openclash
#rm -rf ./package/ctcgfw/luci-app-openclash && git clone https://github.com/vernesong/OpenClash.git package/ctcgfw/luci-app-openclash

# 删除已知的重复文件
#rm -rf ./package/lienol/luci-app-timecontrol
