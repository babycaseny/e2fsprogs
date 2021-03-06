LOCAL_PATH := $(call my-dir)

libext2fs_src_files := \
	ext2_err.c \
	alloc.c \
	alloc_sb.c \
	alloc_stats.c \
	alloc_tables.c \
	badblocks.c \
	bb_inode.c \
	bitmaps.c \
	bitops.c \
	blkmap64_ba.c \
	blkmap64_rb.c \
	blknum.c \
	block.c \
	bmap.c \
	check_desc.c \
	crc16.c \
	crc32c.c \
	csum.c \
	closefs.c \
	dblist.c \
	dblist_dir.c \
	digest_encode.c \
	dirblock.c \
	dirhash.c \
	dir_iterate.c \
	dupfs.c \
	expanddir.c \
	ext_attr.c \
	extent.c \
	fileio.c \
	finddev.c \
	flushb.c \
	freefs.c \
	gen_bitmap.c \
	gen_bitmap64.c \
	get_num_dirs.c \
	get_pathname.c \
	getsize.c \
	getsectsize.c \
	i_block.c \
	icount.c \
	ind_block.c \
	initialize.c \
	inline.c \
	inline_data.c \
	inode.c \
	io_manager.c \
	ismounted.c \
	link.c \
	llseek.c \
	lookup.c \
	mmp.c \
	mkdir.c \
	mkjournal.c \
	namei.c \
	native.c \
	newdir.c \
	openfs.c \
	progress.c \
	punch.c \
	rbtree.c \
	read_bb.c \
	read_bb_file.c \
	res_gdt.c \
	rw_bitmaps.c \
	sha256.c \
	sha512.c \
	swapfs.c \
	symlink.c \
	tdb.c \
	undo_io.c \
	unix_io.c \
	unlink.c \
	valid_blk.c \
	version.c

# get rid of this?!
libext2fs_src_files += test_io.c

libext2fs_shared_libraries := \
	libext2_com_err \
	libext2_uuid \
	libext2_blkid \
	libext2_e2p

libext2fs_system_shared_libraries := libc

libext2fs_c_includes := external/e2fsprogs/lib

libext2fs_cflags := -O2 -g -W -Wall

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libext2fs_src_files)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(libext2fs_system_shared_libraries)
LOCAL_SHARED_LIBRARIES := $(libext2fs_shared_libraries)
LOCAL_C_INCLUDES := $(libext2fs_c_includes)
LOCAL_CFLAGS := $(libext2fs_cflags)
LOCAL_MODULE := libext2fs
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libext2fs_src_files)
LOCAL_SHARED_LIBRARIES := $(addsuffix _host, $(libext2fs_shared_libraries))
LOCAL_C_INCLUDES := $(libext2fs_c_includes)
LOCAL_CFLAGS := $(libext2fs_cflags)
LOCAL_MODULE := libext2fs_host
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_SHARED_LIBRARY)
