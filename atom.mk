LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcap
LOCAL_DESCRIPTION := libcap module

LOCAL_EXPORT_LDLIBS = -lcap

LOCAL_AUTOTOOLS_VERSION := 2.0.4
LOCAL_AUTOTOOLS_CONFIGURE_ARGS := 
LOCAL_AUTOTOOLS_CONFIGURE_ENV :=

define _autotools-def-cmd-configure
	rm -rf $(PRIVATE_OBJ_DIR)
	cp -rf $(PRIVATE_SRC_DIR) $(PRIVATE_OBJ_DIR)
	rm -f $(PRIVATE_OBJ_DIR)/atom.mk
endef

include $(BUILD_AUTOTOOLS)

