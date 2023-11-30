# `Dart/Greeter`

This is a **Greeter** program written in **Dart**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Dart SDK**](https://dlang.org/download.html) | **`dart`**<br>**`dartaotruntime`** | &#9989; | &#9989; | &#10062; | **`sudo apt install dart`** |
| [**Melos**](https://gcc.gnu.org) | **`melos`** | &#10062; | &#10062; | &#9989; | **`dart pub global activate melos`** |

</div>

## Building

This program is designed to be built automatically using tools such as **`melos`**, or manually with **`dart`**, or other **Dart Compilers**. You can initiate the build process either from the root directory or the source directory.

### Root Directory

#### Using `melos`

From the root directory, run one of the following:

```
melos bootstrap
```
```
melos run get
```

### Source Directory _(recommended)_

#### Using `dart`

From the source directory, you can run:

```
dart pub get
```

#### Using `dart compiler`

To use **`dart compile`** from the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **lib** directory.

> [!TIP]
> * The **dart compile exe** compiles the program into a self contained executable.
> * The **dart compile js** compiles the program into a deployable javascript file.
> * The **dart compile kernel** compiles the program into a portable kernel module.

```
cd lib
dart compile exe greeter.dart -o dart-greeter
```
```
cd lib
dart compile js greeter.dart -o dart-greeter.js
```
```
cd lib
dart compile kernel greeter.dart -o dart-greeter.dill
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`melos`**, or manually with **`dart`**, or other **Dart Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `melos`

From the root directory run:

> [!IMPORTANT]
> Melos may **not support running programs which requires user input** and may **require modifying the source code**.

```
melos run dart-greeter
```

#### Using `dart interpreter`

To use **`dart`** to run it directly from root directory, run one of the following:

```
dart dart/greeter/lib/greeter.dart
```
```
dart run dart/greeter/lib/greeter.dart
```

### Source Directory _(recommended)_

#### Using `dart`

From the source directory, you can run:

```
dart run
```

#### Using `dart compile`

If you used **`dart compile`** or other **Dart Compilers** for building the program:

```
# using dart compile exe
cd lib
./dart-greeter
```
```
# using dart compile js
cd lib
node dart-greeter.js
```
```
# using dart compile kernel
cd lib
dart dart-greeter.dill
```

#### Using `dart interpreter`

To use **`dart`** to run it directly from source directory, run one of the following:

```
dart lib/greeter.dart
```
```
dart run lib/greeter.dart
```

## License

Licensed under [**MIT License**](LICENSE).
