LOCAL_PATH := $(call my-dir)

#########################################################################
# Build mke2fs
mke2fs_src_files := \
	mke2fs.c \
	util.c \
	mk_hugefiles.c \
	default_profile.c \
	create_inode.c \
	plausible.c

mke2fs_c_includes := \
	external/e2fsprogs/lib \
	external/e2fsprogs/e2fsck

mke2fs_cflags := -O2 -g -W -Wall

mke2fs_shared_libraries := \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_quota \
	libext2_com_err \
	libext2_e2p

mke2fs_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mke2fs_src_files)
LOCAL_C_INCLUDES := $(mke2fs_c_includes)
LOCAL_CFLAGS := $(mke2fs_cflags)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(mke2fs_system_shared_libraries)
LOCAL_SHARED_LIBRARIES := $(mke2fs_shared_libraries)
LOCAL_MODULE := mke2fs
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mke2fs_src_files)
LOCAL_C_INCLUDES := $(mke2fs_c_includes)
LOCAL_CFLAGS := $(mke2fs_cflags)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(mke2fs_shared_libraries))
LOCAL_MODULE := mke2fs_host
LOCAL_MODULE_STEM := mke2fs
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)

###########################################################################
# Build tune2fs
#
tune2fs_src_files := \
	tune2fs.c \
	plausible.c \
	util.c

tune2fs_c_includes := \
	external/e2fsprogs/lib \
	external/e2fsprogs/e2fsck

tune2fs_cflags := -O2 -g -W -Wall

tune2fs_shared_libraries := \
	libext2fs \
	libext2_com_err \
	libext2_blkid \
	libext2_quota \
	libext2_uuid \
	libext2_e2p

tune2fs_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(tune2fs_src_files)
LOCAL_C_INCLUDES := $(tune2fs_c_includes)
LOCAL_CFLAGS := $(tune2fs_cflags)
LOCAL_SHARED_LIBRARIES := $(tune2fs_shared_libraries)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(tune2fs_system_shared_libraries)
LOCAL_MODULE := tune2fs
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(tune2fs_src_files)
LOCAL_C_INCLUDES := $(tune2fs_c_includes)
LOCAL_CFLAGS := $(tune2fs_cflags)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(tune2fs_shared_libraries))
LOCAL_MODULE := tune2fs_host
LOCAL_MODULE_STEM := tune2fs
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)

#########################################################################
# Build badblocks
#
include $(CLEAR_VARS)

badblocks_src_files := \
	badblocks.c

badblocks_c_includes := \
	external/e2fsprogs/lib

badblocks_cflags := -O2 -g -W -Wall

badblocks_shared_libraries := \
	libext2fs \
	libext2_com_err \
	libext2_uuid \
	libext2_blkid \
	libext2_e2p

badblocks_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(badblocks_src_files)
LOCAL_C_INCLUDES := $(badblocks_c_includes)
LOCAL_CFLAGS := $(badblocks_cflags)
LOCAL_SHARED_LIBRARIES := $(badblocks_shared_libraries)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(badblocks_system_shared_libraries)
LOCAL_MODULE := badblocks
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(badblocks_src_files)
LOCAL_C_INCLUDES := $(badblocks_c_includes)
LOCAL_CFLAGS := $(badblocks_cflags)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(badblocks_shared_libraries))
LOCAL_MODULE := badblocks_host
LOCAL_MODULE_STEM := badblocks
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)

#########################################################################
# Build chattr
#
include $(CLEAR_VARS)

chattr_src_files := \
	chattr.c

chattr_c_includes := \
	external/e2fsprogs/lib

chattr_cflags := -O2 -g -W -Wall

chattr_shared_libraries := \
	libext2_com_err \
	libext2_e2p

chattr_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(chattr_src_files)
LOCAL_C_INCLUDES := $(chattr_c_includes)
LOCAL_CFLAGS := $(chattr_cflags)
LOCAL_SHARED_LIBRARIES := $(chattr_shared_libraries)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(chattr_system_shared_libraries)
LOCAL_MODULE := chattr
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(chattr_src_files)
LOCAL_C_INCLUDES := $(chattr_c_includes)
LOCAL_CFLAGS := $(chattr_cflags)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(chattr_shared_libraries))
LOCAL_MODULE := chattr_host
LOCAL_MODULE_STEM := chattr
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)

#########################################################################
# Build lsattr
#
include $(CLEAR_VARS)

lsattr_src_files := \
	lsattr.c

lsattr_c_includes := \
	external/e2fsprogs/lib

lsattr_cflags := -O2 -g -W -Wall

lsattr_shared_libraries := \
	libext2_com_err \
	libext2_e2p

lsattr_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(lsattr_src_files)
LOCAL_C_INCLUDES := $(lsattr_c_includes)
LOCAL_CFLAGS := $(lsattr_cflags)
LOCAL_SHARED_LIBRARIES := $(lsattr_shared_libraries)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(lsattr_system_shared_libraries)
LOCAL_MODULE := lsattr
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(lsattr_src_files)
LOCAL_C_INCLUDES := $(lsattr_c_includes)
LOCAL_CFLAGS := $(lsattr_cflags)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(lsattr_shared_libraries))
LOCAL_MODULE := lsattr_host
LOCAL_MODULE_STEM := lsattr
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)

#########################################################################
# Build blkid
#
include $(CLEAR_VARS)

blkid_src_files := \
    blkid.c

blkid_c_includes := \
    external/e2fsprogs/lib

blkid_cflags := -O2 -g -W -Wall

blkid_shared_libraries := \
    libext2fs \
    libext2_blkid \
    libext2_com_err \
    libext2_e2p

blkid_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(blkid_src_files)
LOCAL_C_INCLUDES := $(blkid_c_includes)
LOCAL_CFLAGS := $(blkid_cflags)
LOCAL_SHARED_LIBRARIES := $(blkid_shared_libraries)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(blkid_system_shared_libraries)
LOCAL_MODULE := blkid
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

#########################################################################
# Build e4crypt
e4crypt_src_files := e4crypt.c

e4crypt_c_includes := \
	external/e2fsprogs/lib

e4crypt_cflags := -O2 -g -W -Wall

e4crypt_shared_libraries := libext2fs libext2_uuid

e4crypt_system_shared_libraries := libc

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(e4crypt_src_files)
LOCAL_C_INCLUDES := $(e4crypt_c_includes)
LOCAL_CFLAGS := $(e4crypt_cflags)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(e4crypt_system_shared_libraries)
LOCAL_SHARED_LIBRARIES := $(e4crypt_shared_libraries)
LOCAL_MODULE := e4crypt
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(e4crypt_src_files)
LOCAL_C_INCLUDES := $(e4crypt_c_includes)
LOCAL_CFLAGS := $(e4crypt_cflags)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(e4crypt_shared_libraries))
LOCAL_MODULE := e4crypt_host
LOCAL_MODULE_STEM := e4crypt
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)

