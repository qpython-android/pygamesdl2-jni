APP_PROJECT_PATH := $(call my-dir)/..

APP_MODULES := qpysdk SDL2 png16 jpeg libwebp SDL2_image SDL2_gfx SDL2_ttf SDL2_mixer freetype main

APP_ABI := $(ARCH)
APP_STL := c++_static
APP_CFLAGS += $(OFLAG)

APP_ABI := armeabi-v7a
APP_PLATFORM := android-15
