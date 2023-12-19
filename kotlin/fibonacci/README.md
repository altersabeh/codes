# `Kotlin/Fibonacci`

This is a **Fibonacci** program written in **Kotlin**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Gradle Build Tool**](https://gradle.org/install/#with-a-package-manager) | **`gradle`** | &#9989; | &#9989; | &#10062; | **`sdk install gradle`**<br>or<br>**`apt install gradle`** |
| [**Kotlin**](https://kotlinlang.org/docs/getting-started.html#install-kotlin) | **`kotlin`**<br>**`kotlinc`**<br>**`kotlinc-native`**<br>**`konanc`** | &#9989; | &#9989; | &#10062; | **`sdk install kotlin`**<br>or<br>**`brew install kotlin`** |
| [**OpenJDK**](https://openjdk.org/install/) | **`java`** | &#9989; | &#9989; | &#10062; | **`sdk install java x.y.z-open`**<br>or<br>**`apt install openjdk-x-jdk`** |
| [**Eclipse Adoptium Temurin**](https://adoptium.net/installation/linux/) | **`java`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-tem`**<br>or<br>**`apt install temurin-x-jdk`** |
| [**Oracle GraalVM**](https://www.graalvm.org/downloads/#) | **`java`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-graal`** |
| [**Apache Maven**](https://maven.apache.org/install.html) | **`mvn`** | &#10062; | &#10062; | &#9989; | **`sdk install maven`**<br>or<br>**`apt install maven`** |
| [**Apache Ant**](https://ant.apache.org/bindownload.cgi) | **`ant`** | &#10062; | &#10062; | &#9989; | **`sdk install ant`**<br>or<br>**`apt install ant`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`gradle`**, **`maven`**, and **`ant`**, or manually with **`kotlinc`**,
**`kotlin-native`**, or other **Kotlin Compilers**. You can initiate the build
process either from the root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory:

```
gradle kotlin:fibonacci:build
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

### Source Directory _(optional)_

#### Using `gradle`

From the source directory, you can run:

```
gradle build
```

#### Using `kotlin compilers`

To use **`kotlinc`**, **`kotlinc-native`**, or other **Kotlin Compilers** from
the source directory, run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

> [!TIP]
> * The **kotlinc** compiles the program into a **java bytecode** or
>   **executable jar file**.
> * The **kotlinc-native** or **konanc** compiles the program into a **self
>   contained executable**.
> * The **kotlinc-js** compiles the program into a **javascript file**.

```
cd src
kotlinc fibonacci/fibonacci.kt
```
```
cd src
kotlinc fibonacci/fibonacci.kt -include-runtime -d fibonacci/kotlin-fibonacci.jar
```
```
cd src
konanc fibonacci/fibonacci.kt -e fibonacci.main -o fibonacci/kotlin-fibonacci
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`gradle`**, **`maven`**, and **`ant`**, or manually with
**`kotlinc`**, **`kotlinc-native`**, or other **Kotlin Compilers**. You can run
the program from either the root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory, run one of the following:

```
gradle kotlin-fibonacci
```
```
gradle kotlin:fibonacci:run
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

### Source Directory _(optional)_

#### Using `gradle`

From the source directory, you can run one of the following:

```
gradle run
```
```
gradle java-fibonacci
```

#### Using `kotlin compilers`

If you used **`kotlinc`**, **`kotlinc-native`**, or other **Kotlin Compilers**
for building the program:

```
# using kotlinc
cd src
kotlin fibonacci.FibonacciKt
```
```
# using kotlinc for building jar
cd src/fibonacci
java -jar kotlin-fibonacci.jar
```
```
# using kotlinc-native or konanc
cd src/fibonacci
./kotlin-fibonacci.kexe
```

<!--

#### Using `maven`

TODO:

#### Using `ant`

TODO:

-->

## License

Licensed under [**MIT License**](LICENSE).
