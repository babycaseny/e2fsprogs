/* ../../../lib/ss/test_cmd.c - automatically generated from ../../../lib/ss/test_cmd.ct */
#include <ss/ss.h>

static char const * const ssu00001[] = {
"test_cmd",
    "test",
    (char const *)0
};
extern void test_cmd __SS_PROTO;
static ss_request_entry ssu00002[] = {
    { ssu00001,
      test_cmd,
      "Test command",
      0 },
    { 0, 0, 0, 0 }
};

ss_request_table test_cmds = { 2, ssu00002 };
