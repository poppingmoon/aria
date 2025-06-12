import com.android.build.api.variant.FilterConfiguration.FilterType
import com.android.build.api.variant.impl.getFilter

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.poppingmoon.aria"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "28.1.13356709"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }

    defaultConfig {
        applicationId = "com.poppingmoon.aria"
        minSdk = 23
        multiDexEnabled = true
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            keyAlias = System.getenv("KEY_ALIAS")
            keyPassword = System.getenv("KEY_PASSWORD")
            storeFile = file("upload.keystore")
            storePassword = System.getenv("STORE_PASSWORD")
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
        }
    }

    dependenciesInfo {
        includeInApk = false
        includeInBundle = false
    }
}

flutter {
    source = "../.."
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
    implementation("org.unifiedpush.android:embedded-fcm-distributor:3.0.0")
}

configurations.all {
    val tink = "com.google.crypto.tink:tink-android:1.17.0"
    resolutionStrategy {
        force(tink)
        dependencySubstitution {
            substitute(module("com.google.crypto.tink:tink")).using(module(tink))
        }
    }
}

val abiCodes = mapOf("x86_64" to 1, "armeabi-v7a" to 2, "arm64-v8a" to 3)
androidComponents {
    onVariants { variant ->
        variant.outputs.forEach { output ->
            val abiVersionCode = abiCodes[output.getFilter(FilterType.ABI)?.identifier]
            if (abiVersionCode != null) {
                output.versionCode.set((output.versionCode.get() ?: 0) * 10 + abiVersionCode)
            }
        }
    }
}
