#include "center.h"

struct Point center(struct Point a, struct Point b) {
    struct Point center = {(a.x + b.x) / 2, (a.y + b.y) / 2};
    return center;
}
