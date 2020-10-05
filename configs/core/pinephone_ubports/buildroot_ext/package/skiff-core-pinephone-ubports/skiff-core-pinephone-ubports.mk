################################################################################
#
# skiff-core-pinephone-ubports
#
################################################################################

SKIFF_CORE_PINEPHONE_UBPORTS_DEPENDENCIES = skiff-core skiff-core-defconfig

define SKIFF_CORE_PINEPHONE_UBPORTS_INSTALL_COREENV
	mkdir -p $(TARGET_DIR)/opt/skiff/coreenv/skiff-core-pinephone-ubports
	cp -r $(SKIFF_CORE_PINEPHONE_UBPORTS_PKGDIR)/coreenv/* $(TARGET_DIR)/opt/skiff/coreenv/skiff-core-pinephone-ubports/
	$(INSTALL) -m 0644 $(SKIFF_CORE_PINEPHONE_UBPORTS_PKGDIR)/coreenv-defconfig.yaml \
		$(TARGET_DIR)/opt/skiff/coreenv/defconfig.yaml
	touch $(TARGET_DIR)/opt/skiff/coreenv/.overridden
endef

SKIFF_CORE_PINEPHONE_UBPORTS_POST_INSTALL_TARGET_HOOKS += SKIFF_CORE_PINEPHONE_UBPORTS_INSTALL_COREENV

$(eval $(generic-package))
