LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_SRC_FILES += src/com/keanbin/pinyinime/IPinyinDecoderService.aidl

LOCAL_PACKAGE_NAME := WearPinyinIme 
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4
LOCAL_JNI_SHARED_LIBRARIES := libjni_pinyinime
LOCAL_OVERRIDES_PACKAGES := LatinIME
#LOCAL_SDK_VERSION := current
#LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_PROGUARD_ENABLED := disabled
include $(BUILD_PACKAGE)
droidcore all_modules : $(LOCAL_INSTALLED_MODULE)

include $(CLEAR_VARS)
# already defined by packages/apps/Appmgr
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
#    libwear:libs/com.google.android.wearable.jar \
#    libv4:libs/android-support-v4.jar \

#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
#    android-support-v4:libs/android-support-v4.jar
LOCAL_PREBUILT_LIBS := libjni_pinyinime:libs/armeabi/libjni_pinyinime.so

include $(BUILD_MULTI_PREBUILT)
include $(call all-makefiles-under,$(LOCAL_PATH))
