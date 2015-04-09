/* ../../../lib/ext2fs/tst_bitmaps_cmd.c - automatically generated from ../../../lib/ext2fs/tst_bitmaps_cmd.ct */
#include <ss/ss.h>

static char const * const ssu00001[] = {
"setup",
    (char const *)0
};
extern void setup_cmd __SS_PROTO;
static char const * const ssu00002[] = {
"close",
    (char const *)0
};
extern void close_cmd __SS_PROTO;
static char const * const ssu00003[] = {
"dump_inode_bitmap",
    "dump_ib",
    (char const *)0
};
extern void dump_inode_bitmap_cmd __SS_PROTO;
static char const * const ssu00004[] = {
"dump_block_bitmap",
    "dump_bb",
    (char const *)0
};
extern void dump_block_bitmap_cmd __SS_PROTO;
static char const * const ssu00005[] = {
"set_block",
    "setb",
    (char const *)0
};
extern void do_setb __SS_PROTO;
static char const * const ssu00006[] = {
"clear_block",
    "clearb",
    (char const *)0
};
extern void do_clearb __SS_PROTO;
static char const * const ssu00007[] = {
"test_block",
    "testb",
    (char const *)0
};
extern void do_testb __SS_PROTO;
static char const * const ssu00008[] = {
"find_first_zero_block",
    "ffzb",
    (char const *)0
};
extern void do_ffzb __SS_PROTO;
static char const * const ssu00009[] = {
"find_first_set_block",
    "ffsb",
    (char const *)0
};
extern void do_ffsb __SS_PROTO;
static char const * const ssu00010[] = {
"clear_block_bitmap",
    "zerob",
    (char const *)0
};
extern void do_zerob __SS_PROTO;
static char const * const ssu00011[] = {
"set_inode",
    "seti",
    (char const *)0
};
extern void do_seti __SS_PROTO;
static char const * const ssu00012[] = {
"clear_inode",
    "cleari",
    (char const *)0
};
extern void do_cleari __SS_PROTO;
static char const * const ssu00013[] = {
"test_inode",
    "testi",
    (char const *)0
};
extern void do_testi __SS_PROTO;
static char const * const ssu00014[] = {
"find_first_zero_inode",
    "ffzi",
    (char const *)0
};
extern void do_ffzi __SS_PROTO;
static char const * const ssu00015[] = {
"find_first_set_inode",
    "ffsi",
    (char const *)0
};
extern void do_ffsi __SS_PROTO;
static char const * const ssu00016[] = {
"clear_inode_bitmap",
    "zeroi",
    (char const *)0
};
extern void do_zeroi __SS_PROTO;
static ss_request_entry ssu00017[] = {
    { ssu00001,
      setup_cmd,
      "Setup file system",
      0 },
    { ssu00002,
      close_cmd,
      "Close file system",
      0 },
    { ssu00003,
      dump_inode_bitmap_cmd,
      "Dump the inode bitmap",
      0 },
    { ssu00004,
      dump_block_bitmap_cmd,
      "Dump the block bitmap",
      0 },
    { ssu00005,
      do_setb,
      "Set block",
      0 },
    { ssu00006,
      do_clearb,
      "Clear block",
      0 },
    { ssu00007,
      do_testb,
      "Test block",
      0 },
    { ssu00008,
      do_ffzb,
      "Find first zero block",
      0 },
    { ssu00009,
      do_ffsb,
      "Find first set block",
      0 },
    { ssu00010,
      do_zerob,
      "Clear block bitmap",
      0 },
    { ssu00011,
      do_seti,
      "Set inode",
      0 },
    { ssu00012,
      do_cleari,
      "Clear inode",
      0 },
    { ssu00013,
      do_testi,
      "Test inode",
      0 },
    { ssu00014,
      do_ffzi,
      "Find first zero inode",
      0 },
    { ssu00015,
      do_ffsi,
      "Find first set inode",
      0 },
    { ssu00016,
      do_zeroi,
      "Clear inode bitmap",
      0 },
    { 0, 0, 0, 0 }
};

ss_request_table tst_bitmaps_cmds = { 2, ssu00017 };
