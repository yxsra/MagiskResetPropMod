MY_LOCAL_PATH := $(call my-dir)
LOCAL_PATH := $(MY_LOCAL_PATH)

include $(MY_LOCAL_PATH)/system_properties/Android.mk

include $(MY_LOCAL_PATH)/prop/Android.mk

include $(MY_LOCAL_PATH)/../../../../external/libcxx/Android.mk
