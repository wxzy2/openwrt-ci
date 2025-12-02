rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate
