TWEAK_NAME = ContinuityBrowser
ContinuityBrowser_FILES = Tweak.x

export TARGET = iphone:clang
export ARCHS = armv7 arm64
export TARGET_IPHONEOS_DEPLOYMENT_VERSION = 8.0
export ADDITIONAL_OBJCFLAGS = -fobjc-arc -fvisibility=hidden
export INSTALL_TARGET_PROCESSES = useractivityd

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
