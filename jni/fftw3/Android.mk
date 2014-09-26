LOCAL_FFTW3_PATH := $(call my-dir)

### fftw3
include $(CLEAR_VARS)
LOCAL_PATH := $(LOCAL_FFTW3_PATH)
LOCAL_MODULE := libfftw3
LOCAL_SRC_FILES := lib/libfftw3.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_STATIC_LIBRARY)

### fftw3f
include $(CLEAR_VARS)
LOCAL_PATH := $(LOCAL_FFTW3_PATH)
LOCAL_MODULE := libfftw3f
LOCAL_SRC_FILES := lib/libfftw3f.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_STATIC_LIBRARY)

### fftw3f_threads
include $(CLEAR_VARS)
LOCAL_PATH := $(LOCAL_FFTW3_PATH)
LOCAL_MODULE := libfftw3f_threads
LOCAL_SRC_FILES := lib/libfftw3f_threads.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_STATIC_LIBRARY)
