dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb foundation-v8.dtb \
				fvp-base-gicv2-psci.dtb

dtb-$(CONFIG_ARCH_VEXPRESS) += juno.dtb

dtb-$(CONFIG_ARCH_XGENE) += apm-mustang.dtb

dtb-$(CONFIG_MACH_ESPRESSO7420) += exynos7420-espresso7420.dtb

dtb-$(CONFIG_MACH_UNIVERSAL7420) += exynos7420-universal7420.dtb \
				exynos7420-universal7420-ufs.dtb \
				exynos7420-universal7420-ufs_rev00.dtb

dtb-$(CONFIG_MACH_SMDK7580) += exynos7580-smdk7580.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_UNIVERSAL) += exynos7580-universal7580.dtb \
				exynos7580-universal7580_rev01.dtb \
				exynos7580-universal7580_rev02.dtb \
				exynos7580-universal7580_rev03.dtb \
				exynos7580-universal7580_rev04.dtb \
				exynos7580-universal7580_rev05.dtb \
				exynos7580-universal7580_q.dtb

dtb-$(CONFIG_MACH_EXYNOS7578_A3XELTE) += exynos7578-a3xelte_eur_open_00.dtb \
				exynos7578-a3xelte_eur_open_01.dtb \
				exynos7578-a3xelte_eur_open_02.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_A3XELTE) += exynos7580-a3xelte_eur_open_00.dtb \
				exynos7580-a3xelte_eur_open_01.dtb \
				exynos7580-a3xelte_eur_open_02.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_A5XELTE) += exynos7580-a5xelte_eur_open_00.dtb \
				exynos7580-a5xelte_eur_open_01.dtb \
				exynos7580-a5xelte_eur_open_02.dtb \
				exynos7580-a5xelte_eur_open_03.dtb \
				exynos7580-a5xelte_eur_open_08.dtb \
				exynos7580-a5xelte_eur_open_09.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_A7XELTE) += exynos7580-a7xelte_eur_open_00.dtb \
				exynos7580-a7xelte_eur_open_01.dtb \
				exynos7580-a7xelte_eur_open_03.dtb \
				exynos7580-a7xelte_eur_open_08.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_J7ELTE) += exynos7580-j7elte_rev00.dtb \
				exynos7580-j7elte_rev04.dtb \
				exynos7580-j7elte_rev06.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_J7XLTE) += exynos7580-j7xelte_swa_open_00.dts \
				exynos7580-j7xelte_swa_open_01.dts \
				exynos7580-j7xelte_swa_open_02.dts \
				exynos7580-j7xelte_swa_open_03.dts \

dtb-$(CONFIG_MACH_EXYNOS7580_S5NEO) += exynos7580-s5neo_rev00.dtb \
				exynos7580-s5neo_rev06.dtb \
				exynos7580-s5neo_rev07.dtb \
				exynos7580-s5neo_rev08.dtb \
				exynos7580-s5neo_rev09.dtb \
				exynos7580-s5neo_rev11.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_GVLTE) += exynos7580-gvlte_rev00.dtb \
				exynos7580-gvlte_rev01.dtb \
				exynos7580-gvlte_rev02.dtb \
				exynos7580-gvlte_rev09.dtb \
				exynos7580-gvlte_rev10.dtb

dtb-$(CONFIG_MACH_EXYNOS7580_GVWIFI) += exynos7580-gvwifi_rev09.dtb \
				exynos7580-gvwifi_rev10.dtb

dtb-$(CONFIG_MACH_UNIVERSAL5433) += exynos5433-universal5433_rev02.dtb \
				exynos5433-universal5433.dtb

targets += dtbs

DTB_NAMES := $(subst $\",,$(CONFIG_BUILD_ARM64_APPENDED_DTB_IMAGE_NAMES))
ifneq ($(DTB_NAMES),)
DTB_LIST := $(addsuffix .dtb,$(DTB_NAMES))
else
DTB_LIST := $(dtb-y)
endif
targets += $(DTB_LIST)

dtbs: $(addprefix $(obj)/, $(DTB_LIST))

clean-files := dts/*.dtb *.dtb
