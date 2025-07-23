# SPDX-License-Identifier: GPL-2.0

dtb-$(CONFIG_MACH_XIAOMI_E10) := beryllium/beryllium-mp-v2.1.dtb
dtb-$(CONFIG_MACH_XIAOMI_E1N) := dipper/dipper-mp-v2.1.dtb
dtb-$(CONFIG_MACH_XIAOMI_E1S) := equuleus/equuleus-mp-v2.1.dtb

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_MACH_XIAOMI_E5) += perseus/perseus-mp-v2.1-overlay.dtbo

perseus-mp-v2.1-overlay.dtbo-base := sdm845-v2.1-perseus.dtb
endif

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files    := *.dtb *.dtbo
