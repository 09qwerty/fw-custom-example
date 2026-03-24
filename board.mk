include $(BOARD_DIR)/firmware/firmware.mk


BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

# this would save some flash while being unable to update WBO controller firmware
DDEFS += -DEFI_WIDEBAND_FIRMWARE_UPDATE=FALSE

# assign critical LED to a non-existent pin if you do not have it on your board
# good old PD14 is still the default value
# DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::I15

# EGT chip
#un-comment to enable
#DDEFS += -DEFI_MAX_31855=TRUE

#see main repo for details on this any many other optional subsystems. We have too many, one has to choose what fits into his choice of stm32
#DDEFS += -DEFI_ONBOARD_MEMS=TRUE

DDEFS += -DEFI_WS2812=TRUE
#DDEFS += -DEFI_DAC=TRUE
#DDEFS += -DEFI_CDM_INTEGRATION=TRUE
#DDEFS += -DEFI_MC33816=TRUE
DDEFS += -DEFI_POTENTIOMETER=TRUE
#DDEFS += -DBOARD_TLE6240_COUNT=1
#DDEFS += -DBOARD_MC33972_COUNT=1
#DDEFS += -DBOARD_TLE8888_COUNT=1
#DDEFS += -DBOARD_L9779_COUNT=1
#DDEFS += -DBOARD_DRV8860_COUNT=1
#DDEFS += -DBOARD_MC33810_COUNT=1
#DDEFS += -DBOARD_TLE9104_COUNT=1
#DDEFS += -DBOARD_TLE9201_COUNT=1
DDEFS += -DEFI_MAX_31855=TRUE
#DDEFS += -DEFI_ONBOARD_MEMS=TRUE
DDEFS += -DEFI_TCU=TRUE
#DDEFS += -DEFI_UART_GPS=TRUE
DDEFS += -DEFI_MALFUNCTION_INDICATOR=TRUE
DDEFS += -DEFI_SENT_SUPPORT=TRUE


