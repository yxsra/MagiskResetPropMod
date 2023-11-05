

plugins {
    alias(libs.plugins.androidApplication)
}

android {
    namespace = "com.yxsr.mod.resetprop"
    compileSdk = 34
    buildToolsVersion = "34.0.0"
    ndkVersion = "26.1.10909125"

    defaultConfig {
        applicationId = "com.yxsr.mod.resetprop"
        minSdk = 30
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"

        externalNativeBuild {
            ndk {
                abiFilters += listOf("armeabi-v7a", "arm64-v8a")
                jobs = Runtime.getRuntime().availableProcessors()
                debugSymbolLevel="none"
            }
        }
    }

    buildFeatures {
        prefab=true
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles( "proguard-rules.pro")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    externalNativeBuild {
        ndkBuild {
            path = file("src/main/cpp/Android.mk")
        }
    }
}


dependencies {
    implementation("dev.rikka.ndk.thirdparty:nativehelper:1.0.1")
}