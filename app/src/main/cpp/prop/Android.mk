MY_LOCAL_PATH2 := $(call my-dir)
LOCAL_PATH := $(MY_LOCAL_PATH2)


include $(CLEAR_VARS)

LOCAL_MODULE := resetprop

LOCAL_CPPFLAGS := -std=c++20
LOCAL_STATIC_LIBRARIES := \
					libcxx \
					libsystemproperties

LOCAL_SRC_FILES := prop.cpp resetprop.cpp

LOCAL_LDLIBS := -llog

LOCAL_LDFLAGS           := -fPIE
include $(LOCAL_PATH)/build-executable.mk


