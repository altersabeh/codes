# `Java/Random`

This is a **Random Number Game** written in **Java**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Gradle Build Tool**](https://gradle.org/install/#with-a-package-manager) | **`gradle`** | &#9989; | &#9989; | &#10062; | **`sdk install gradle`**<br>or<br>**`apt install gradle`** |
| [**OpenJDK**](https://openjdk.org/install/) | **`java`**<br>**`javac`** | &#9989; | &#9989; | &#10062; | **`sdk install java x.y.z-open`**<br>or<br>**`apt install openjdk-x-jdk`** |
| [**Eclipse Adoptium Temurin**](https://adoptium.net/installation/linux/) | **`java`**<br>**`javac`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-tem`**<br>or<br>**`apt install temurin-x-jdk`** |
| [**Oracle GraalVM**](https://www.graalvm.org/downloads/#) | **`java`**<br>**`javac`**<br>**`native-image`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-graal`** |
| [**Apache Maven**](https://maven.apache.org/install.html) | **`mvn`** | &#10062; | &#10062; | &#9989; | **`sdk install maven`**<br>or<br>**`apt install maven`** |
| [**Apache Ant**](https://ant.apache.org/bindownload.cgi) | **`ant`** | &#10062; | &#10062; | &#9989; | **`sdk install ant`**<br>or<br>**`apt install ant`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`apt install bazel`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`gradle`**, **`maven`**, **`ant`**, and **`bazel`**, or manually with
**`javac`**, **`native-image`**, or other **Java Compilers**. You can initiate
the build process either from the root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory:

```
gradle java:random:build
```

#### Using `maven`

To use **`maven`** from the root directory, run one of the following:

```
mvn compile -pl java:random
```
```
mvn package -pl java:random
```

<!--

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build java-random
```
```
bazel build java/random:main
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
> The **sources** are located in the **src** directory.

> [!TIP]
> * The **javac** compiles the program into a **java bytecode**.
> * The **native-image** compiles the program into a **self contained
>   executable**.

```
cd src/main/java
javac -g finonacci/RandomNumberGame.java
```
```
cd src/main/java
javac -g finonacci/RandomNumberGame.java
native-image random.RandomNumberGame -o java-random
```

#### Using `maven`

To use **`maven`** from the source directory, run one of the
following:

```
mvn compile
```
```
mvn package
```

<!--

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build java-random
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
gradle java-random
```
```
gradle java:random:run
```

#### Using `java virtual machine`

To use **`java`** to run it directly from root directory:

```
java java/random/src/main/java/random/RandomNumberGame.java
```

#### Using `maven`

To use **`maven`** from the root directory:

```
mvn exec:java -pl java:random
```

<!--

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run java-random
```
```
bazel run java/random:main
```

### Source Directory _(optional)_

#### Using `gradle`

From the source directory, you can run one of the following:

```
gradle run
```
```
gradle java-random
```

#### Using `java compilers`

If you used **`javac`**, **`native-image`**, or other **Java Compilers** for
building the program:

```
# using javac
cd src/main/java
java random.RandomNumberGame
```
```
# using native-image
cd src/main/java
./java-random
```

#### Using `java virtual machines`

To use **`java`** to run it directly from source directory, run one of the
following:

```
java src/main/java/random/RandomNumberGmae.java
```

#### Using `maven`

To use **`maven`** from the source directory:

```
mvn exec:java
```

<!--

#### Using `ant`

TODO:

-->

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run java-random
```

## License

Licensed under [**MIT License**](LICENSE).
