include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

LOADADDR = 0x40008000

define Image/Build
	$(call Image/Build/$(1),$(1))
endef

define Image/BuilduImage
	$(CP) $(KDIR)/zImage$(2) $(KDIR)/zImage-$(1)$(2)
	cat $(LINUX_DIR)/arch/arm/boot/dts/$1.dtb >> $(KDIR)/zImage-$(1)$(2)
	mkimage -A arm -O linux -T kernel -C none -a 0x40008000 -e 0x40008000 -n 'ARM OpenWrt Linux-$(LINUX_VERSION)'  -d $(KDIR)/zImage-$(1)$(2) $(KDIR)/uImage-$(1)$(2)
endef

$(eval $(call BuildImage))
