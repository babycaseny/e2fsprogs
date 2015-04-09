/* ../../../lib/ext2fs/tst_cmds.c - automatically generated from ../../../lib/ext2fs/tst_cmds.ct */
#include <ss/ss.h>

static char const * const ssu00001[] = {
"block_iterate",
    (char const *)0
};
extern void do_block_iterate __SS_PROTO;
static ss_request_entry ssu00002[] = {
    { ssu00001,
      do_block_iterate,
      "block_iterate",
      0 },
    { 0, 0, 0, 0 }
};

ss_request_table libext2fs_cmds = { 2, ssu00002 };
