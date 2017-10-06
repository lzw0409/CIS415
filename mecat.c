#include "mentry.h"

#define UNUSED __attribute__ ((unused))

int main(UNUSED int argc, UNUSED char *argv[]) {
    const MEntry *me;

    while ((me = MEntry_get(stdin)) != NULL) {
        me->print(me, stdout);
        me->destroy(me);
    }
    return 0;
}
