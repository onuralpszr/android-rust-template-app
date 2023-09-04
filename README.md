# Android Rust Compose Template App

This is an Android project that demonstrates how to use Rust code in a Jetpack Compose app. The app uses the JNI package in Rust to call a `.so` file and make JNI calls with Android.

## Prerequisites

- Rust 1.55.0 or later
- Cargo 1.55.0 or later
- Android SDK
- Android NDK >= r23

## Getting Started

1. Clone the repository:

```console
git clone https://github.com/onuralpszr/android-rust-template-app
```

2. Open the project in Android Studio.

3. Build the Rust code:

For arm64-v8a

```console
cd rustlib
cargo update
rustup target add aarch64-linux-android
cargo install cargo-ndk
cargo ndk -t arm64-v8a -o ../app/src/main/jniLibs/  build
```

or build for all architectures

```console
cd rustlib
./build.sh
```

4. Build and run the app in Android Studio with your emulator or in device.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
