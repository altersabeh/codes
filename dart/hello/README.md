# `Dart/Hello`

This is a **Hello World** program written in **Dart**.

## Prerequisite

To run and build this program you need to install:

* [**Dart SDK**](https://dart.dev/get-dart#install)
  * `dart`

* [**Melos**](https://melos.invertase.dev/getting-started#installation)
  * `melos`

## Building

### Root Directory

From the root directory run one of the following:

* ```
  melos bootstrap
  ```
* ```
  melos run get
  ```

### Source Directory _(recommended)_

From the source directory you can run:

* ```
  dart pub get
  ```

You can also use `dart` from the source directory:

* ```
  dart compile exe hello.dart -o dart-hello
  ```

## Running

### Root Directory

From the root directory run:

* ```
  melos run dart-hello
  ```

You can also use `dart` to run it directly using one of the following:

* ```
  dart dart/hello/lib/hello.dart
  ```
* ```
  dart run dart/hello/lib/hello.dart
  ```

### Source Directory _(recommended)_

From the source directory you can run:

* ```
  dart run
  ```

If you used `dart compile` for building:

* ```
  ./dart-hello
  ```

You can also use `dart` to run it directly using one of the following:

* ```
  dart hello.dart
  ```
* ```
  dart run hello.dart
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
