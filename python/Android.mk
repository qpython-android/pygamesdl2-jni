LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := python

ifneq ($(filter $(NDK_KNOWN_DEVICE_ABI64S),$(TARGET_ARCH_ABI)),)

LOCAL_EXPORT_C_INCLUDES := python3.6m
LOCAL_SRC_FILES := libpython3.6m64.so

else

LOCAL_EXPORT_C_INCLUDES := python2.7
LOCAL_SRC_FILES := libpython2.7.so


include $(PREBUILT_SHARED_LIBRARY)

endif

