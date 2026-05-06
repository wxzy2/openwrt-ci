#rm -rf package/emortal/luci-app-athena-led
#git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
#chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate

#!/bin/bash


# athena-led
rm -rf package/emortal/luci-app-athena-led package/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led

# homeproxy
rm -rf package/emortal/luci-app-homeproxy package/luci-app-homeproxy
git clone --depth=1 https://github.com/immortalwrt/homeproxy package/luci-app-homeproxy

# ddns-go
rm -rf package/emortal/luci-app-ddns-go package/luci-app-ddns-go
git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go package/luci-app-ddns-go

# openclash
rm -rf package/emortal/luci-app-openclash package/luci-app-openclash
git clone --depth=1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash-temp
mv package/luci-app-openclash-temp/luci-app-openclash package/luci-app-openclash
rm -rf package/luci-app-openclash-temp
