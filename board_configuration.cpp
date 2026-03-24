#include "pch.h"
#include "board_overrides.h"
// board-specific configuration setup
static void customBoardDefaultConfiguration() {
        engineConfiguration->injectionPins[0] = Gpio::G7;
        engineConfiguration->injectionPins[1] = Gpio::G8;
        engineConfiguration->injectionPins[2] = Gpio::D11;
        engineConfiguration->injectionPins[3] = Gpio::D10;
        
        engineConfiguration->ignitionPins[0] = Gpio::C13;
        engineConfiguration->ignitionPins[1] = Gpio::E5;
        engineConfiguration->ignitionPins[2] = Gpio::E4;
        engineConfiguration->ignitionPins[3] = Gpio::E3;
        
        engineConfiguration->triggerInputPins[0] = Gpio::B1;
        engineConfiguration->triggerInputPins[1] = Gpio::A6;
}

void setup_custom_board_overrides() {
        custom_board_DefaultConfiguration = customBoardDefaultConfiguration;
}
