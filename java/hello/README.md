# `Java/Hello`

This is a **Hello World** program written in **Java**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Gradle Build Tool**](https://gradle.org/install/#with-a-package-manager) | **`gradle`** | &#9989; | &#9989; | &#10062; | **`sdk install gradle`**<br>or<br>**`sudo apt install gradle`** |
| [**OpenJDK**](https://openjdk.org/install/) | **`java`**<br>**`javac`** | &#9989; | &#9989; | &#10062; | **`sdk install java x.y.z-open`**<br>or<br>**`sudo apt install openjdk-x-jdk`** |
| [**Eclipse Adoptium Temurin**](https://adoptium.net/installation/linux/) | **`java`**<br>**`javac`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-tem`**<br>or<br>**`sudo apt install temurin-x-jdk`** |
| [**Oracle GraalVM**](https://www.graalvm.org/downloads/#) | **`java`**<br>**`javac`**<br>**`native-image`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-graal`** |
| [**Apache Maven**](https://maven.apache.org/install.html) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`sdk install maven`**<br>or<br>**`sudo apt install maven`** |
| [**Apache Ant**](https://ant.apache.org/bindownload.cgi) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`sdk install ant`**<br>or<br>**`sudo apt install ant`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`sudo apt install bazel`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`gradle`**, **`maven`**, **`ant`**, and **`bazel`** or manually with
**`javac`**, **`native-image`**, or other **Java Compilers**. You can initiate
the build process either from the root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory:

```
gradle java:hello:build
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build java-hello
```
```
bazel build java/hello:main
```

### Source Directory _(optional)_

#### Using `gradle`

From the source directory, you can run:

```
gradle build
```

#### Using `java compilers`

To use **`javac`**, **`native-image`**, or other **Java Compilers** from the
source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **lib** directory.

> [!TIP]
> * The **javac** compiles the program into a java bytecode.
> * The **native-image** compiles the program into a self contained executable.

```
cd src
javac hello/Hello.java
```
```
cd src
javac hello/Hello.java
native-image hello.Hello -o hello/java-hello
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build java-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`gradle`**, **`maven`**, **`ant`**, and **`bazel`**, or manually
with **`javac`**, **`native-image`**, or other **Java Compilers**. You can run
the program from either the root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory, run one of the following:

```
gradle java-hello
```
```
gradle java:hello:run
```

#### Using `java interpreter`

To use **`java`** to run it directly from root directory:

```
java java/hello/src/hello/Hello.java
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run java-hello
```
```
bazel run java/hello:main
```

### Source Directory _(optional)_

#### Using `gradle`

From the source directory, you can run one of the following:

```
gradle run
```
```
gradle java-hello
```

#### Using `java compilers`

If you used **`javac`**, **`native-image`**, or other **Java Compilers** for
building the program:

```
# using javac
cd src
java hello.Hello
```
```
# using native-image
cd src/hello
./java-hello
```

#### Using `java interpreters`

To use **`java`** to run it directly from source directory, run one of the
following:

```
java src/hello/Hello.java
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run java-hello
```

## License

Licensed under [**MIT License**](LICENSE).
