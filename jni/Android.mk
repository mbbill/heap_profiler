TOP_PATH := $(call my-dir)
#APP_PLATFORM := android-21 #for 5.0
APP_PLATFORM := android-16 #for 4.1

# build heap profiler
include $(CLEAR_VARS)
LOCAL_PATH := $(TOP_PATH)
LOCAL_MODULE := heap_profiler
LOCAL_SRC_FILES := heap_profiler_hooks_android.c heap_profiler.c
LOCAL_CFLAGS += -Wall -fPIC
#-pie -ldl
#LOCAL_LDFLAGS += -rdynamic 
include $(BUILD_SHARED_LIBRARY)

# build heap_dump
include $(CLEAR_VARS)
LOCAL_PATH := $(TOP_PATH)
LOCAL_MODULE = heap_dump
LOCAL_SRC_FILES := heap_dump.c
LOCAL_CFLAGS += -Wall -fPIE
LOCAL_LDFLAGS += -fPIE -pie
include $(BUILD_EXECUTABLE)
