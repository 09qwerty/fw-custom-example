#include "pch.h"
#include "board_overrides.h"
// board-specific configuration setup
static void customBoardDefaultConfiguration() {
}

void setup_custom_board_overrides() {
        custom_board_DefaultConfiguration = customBoardDefaultConfiguration;
}
