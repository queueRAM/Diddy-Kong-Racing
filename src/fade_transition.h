#ifndef _FADE_TRANSITION_H_
#define _FADE_TRANSITION_H_

#include "types.h"

#define FADE_FULLSCREEN          0
#define FADE_BARNDOOR_HORIZONTAL 1
#define FADE_BARNDOOR_VERTICAL   2
#define FADE_CIRCLE              3
#define FADE_WAVES               4
#define FADE_BARNDOOR_DIAGONAL   5
#define FADE_DISABLED            6

#define FADE_COLOR(red, green, blue) red, green, blue
#define FADE_COLOR_BLACK FADE_COLOR(0, 0, 0)
#define FADE_COLOR_WHITE FADE_COLOR(255, 255, 255)

#define FADE_TRANSITION(type, color, duration, unk6) { type, color, duration, unk6 }

/* Size: 8 bytes */
typedef struct FadeTransition {
    u8 type; // top 2 bits also act as flags
    u8 red;
    u8 green;
    u8 blue;
    u16 duration;
    u16 unk6;
} FadeTransition;

#endif