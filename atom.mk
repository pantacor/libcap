
LOCAL_PATH := $(call my-dir)
mylocal := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcap
LOCAL_DESCRIPTION := libcap module

LOCAL_EXPORT_LDLIBS = -lcap

LOCAL_AUTOTOOLS_MAKE_BUILD_ARGS := CROSS_COMPILE=$(TARGET_CROSS) BUILD_CC=gcc
LOCAL_AUTOTOOLS_MAKE_INSTALL_ARGS := lib=lib

define LOCAL_AUTOTOOLS_CMD_CONFIGURE
	cp -r $(PRIVATE_SRC_DIR)/*  $(call module-get-build-dir,libcap)/obj
	rm -f $(call module-get-build-dir,libcap)/obj/atom.mk
endef

include $(BUILD_AUTOTOOLS)

