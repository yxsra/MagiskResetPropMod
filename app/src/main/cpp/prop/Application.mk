APP_CFLAGS     := -Wall -Wextra
APP_CFLAGS     += -Wno-builtin-macro-redefined -D__FILE__=__FILE_NAME__
APP_CONLYFLAGS := -std=c2x
APP_CPPFLAGS   := -std=c++2x -fno-exceptions -fno-rtti

APP_STL        := none

ifneq ($(NDK_DEBUG),1)
APP_CFLAGS     += -flto -Werror -Wno-error=constant-logical-operand
APP_LDFLAGS    += -flto
endif

APP_PLATFORM   := android-30