LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	event.c \
	genl.c \
	ibss.c \
	info.c \
	interface.c \
	iw.c \
	mesh.c \
	mpath.c \
	phy.c \
	reason.c \
	reg.c \
	scan.c \
	station.c \
	status.c \
	version.c \
	util.c

LOCAL_NO_DEFAULT_COMPILER_FLAGS := true
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libnl/include \
	$(TARGET_PROJECT_INCLUDES) $(TARGET_C_INCLUDES)
LOCAL_CFLAGS := $(TARGET_GLOBAL_CFLAGS) $(PRIVATE_ARM_CFLAGS)

LOCAL_SHARED_LIBRARIES += libnl
LOCAL_MODULE := iw
LOCAL_LDFLAGS := -Wl,--no-gc-sections

include $(BUILD_EXECUTABLE)
