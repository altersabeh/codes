# `Dart/Hello`

This is a **Hello World** program written in **Dart**.

``` Dart
// Hello World in Dart !

void main() {
    print("Hello World from Dart !");
}
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Dart SDK**](https://dart.dev/get-dart#install) | **`dart`**<br>**`dartaotruntime`** | &#9989; | &#9989; | &#10062; | **`apt install dart`** |
| [**Melos**](https://melos.invertase.dev/getting-started#installation) | **`melos`** | &#10062; | &#10062; | &#9989; | **`dart pub global activate melos`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`melos`**, or manually with **`dart`**, or other **Dart Compilers**. You can
initiate the build process either from the root directory or the source
directory.

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
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **lib** directory.

> [!TIP]
> * The **dart compile exe** compiles the program into a **self contained
>   executable**.
> * The **dart compile js** compiles the program into a **deployable javascript
>   file**.
> * The **dart compile kernel** compiles the program into a **portable kernel
>   module**.

```
cd lib
dart compile exe hello.dart -o dart-hello
```
```
cd lib
dart compile js hello.dart -o dart-hello.js
```
```
cd lib
dart compile kernel hello.dart -o dart-hello.dill
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`melos`**, or manually with **`dart`**, or other **Dart
Compilers**. You can run the program from either the root directory or the
source directory.

### Root Directory

#### Using `melos`

From the root directory run:

> [!IMPORTANT]
> Melos may **not support running programs which requires user input** and may
> **require modifying the source code**.

```
melos run dart-hello
```

#### Using `dart interpreter`

To use **`dart`** to run it directly from root directory, run one of the
following:

```
dart dart/hello/lib/hello.dart
```
```
dart run dart/hello/lib/hello.dart
```

### Source Directory _(recommended)_

#### Using `dart`

From the source directory, you can run:

```
dart run
```

#### Using `dart compiler`

If you used **`dart compile`** or other **Dart Compilers** for building the
program:

```
# using dart compile exe
cd lib
./dart-hello
```
```
# using dart compile js
cd lib
node dart-hello.js
```
```
# using dart compile kernel
cd lib
dart dart-hello.dill
```

#### Using `dart interpreter`

To use **`dart`** to run it directly from source directory, run one of the
following:

```
dart lib/hello.dart
```
```
dart run lib/hello.dart
```

## License

Licensed under [**MIT License**](LICENSE).
