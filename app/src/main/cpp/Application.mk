APP_ABI        := armeabi-v7a arm64-v8a
APP_CFLAGS     := -DNDEBUG -g0 -Oz -flto=full -fvisibility=hidden -fvisibility-inlines-hidden -ffunction-sections -fdata-sections
APP_CONLYFLAGS := -std=c2x
APP_CPPFLAGS   := -std=c++2x -fno-exceptions -fno-rtti
APP_STL        := none
APP_PLATFORM   := android-30