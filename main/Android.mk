LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../sdl2



ifneq ($(filter $(NDK_KNOWN_DEVICE_ABI64S),$(TARGET_ARCH_ABI)),)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include $(LOCAL_PATH)/../sdl2_image $(LOCAL_PATH)/../python/python3.6m

# Add your application source files here...
LOCAL_SRC_FILES := dummy.c

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog


else

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include  $(LOCAL_PATH)/../sdl2_image $(LOCAL_PATH)/../python/python2.7

# Add your application source files here...
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.c main.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image python

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

endif


include $(BUILD_SHARED_LIBRARY)
