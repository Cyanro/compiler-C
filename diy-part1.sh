# 在更新feeds 之前，./script/feed update -a
# 取消注释
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#增加feed源
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
