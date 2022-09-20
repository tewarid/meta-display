FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# DTS contributed by https://github.com/swkim01/waveshare-dtoverlays.git
WAVESHARE_FILES = " \
    file://oled-ssd1306.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://oled-ssd1331.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://waveshare32b.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://waveshare35a.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://waveshare35b.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://waveshare35b-v2.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://waveshare35c.dts;subdir=git/arch/${ARCH}/boot/dts/overlays \
    file://wm8960.cfg \
"

SRC_URI += "${@bb.utils.contains("MACHINE_FEATURES", "waveshare", "${WAVESHARE_FILES}", "", d)}"
