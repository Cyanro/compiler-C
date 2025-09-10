#更新feed之后
# 修改默认IP
# sed -i 's/192.168.1.1/192.168.1.28/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/luci2/bin/config_generate

# 修改默认主机名
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile

# 修改默认主机名
# sed -i 's/LEDE/CyanTec/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/CyanTec/g' package/base-files/luci2/bin/config_generate

#修改JCGQ20的nand
sed -i '/&nand\s*{/{:a;n;/status\s*=\s*"okay";/{a\
\tnand-ecc-step-size = <512>;\
\tnand-ecc-strength = <8>;\
}}}' target/linux/ramips/dts/mt7621_jcg_q20.dts
