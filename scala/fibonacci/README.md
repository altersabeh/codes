# `Scala/Fibonacci`

This is a **Fibonacci** program written in **Scala**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Scala Build Tool**](https://gradle.org/install/#with-a-package-manager) | **`sbt`** | &#9989; | &#9989; | &#10062; | **`cs install sbt`**<br>or<br>**`sdk install sbt`** |
| [**Scala**](https://groovy.apache.org/download.html) | **`scala`**<br>**`scalac`**| &#9989; | &#9989; | &#10062; | **`cs install scala`**<br>or<br>**`sdk install scala`** |
| [**OpenJDK**](https://openjdk.org/install/) | **`java`**<br>**`javac`** | &#9989; | &#9989; | &#10062; | **`sdk install java x.y.z-open`**<br>or<br>**`apt install openjdk-x-jdk`** |
| [**Eclipse Adoptium Temurin**](https://adoptium.net/installation/linux/) | **`java`**<br>**`javac`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-tem`**<br>or<br>**`apt install temurin-x-jdk`** |
| [**Oracle GraalVM**](https://www.graalvm.org/downloads/#) | **`java`**<br>**`javac`**<br>**`native-image`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-graal`** |
| [**Gradle Build Tool**](https://gradle.org/install/#with-a-package-manager) | **`gradle`** | &#10062; | &#10062; | &#9989; | **`sdk install gradle`**<br>or<br>**`apt install gradle`** |
| [**Apache Maven**](https://maven.apache.org/install.html) | **`mvn`** | &#10062; | &#10062; | &#9989; | **`sdk install maven`**<br>or<br>**`apt install maven`** |
| [**Apache Ant**](https://ant.apache.org/bindownload.cgi) | **`ant`** | &#10062; | &#10062; | &#9989; | **`sdk install ant`**<br>or<br>**`apt install ant`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`sbt`**, **`gradle`**, **`maven`**, and **`ant`**, or manually with
**`scalac`**, or other **Scala Compilers**. You can initiate the build process
either from the root directory or the source directory.

### Root Directory

#### Using `sbt`

From the root directory, run one of the following:

```
sbt scala-fibonacci/compile
```
```
sbt "project scala-fibonacci" compile
```

#### Using `gradle`

From the root directory:

```
gradle scala:fibonacci:build
```

#### Using `maven`

To use **`maven`** from the root directory, run one of the following:

```
mvn compile -pl scala:fibonacci
```
```
mvn package -pl scala:fibonacci
```

<!--

#### Using `ant`

TODO:

-->

### Source Directory _(optional)_

#### Using `sbt`

From the source directory, you can run:

```
sbt compile
```

#### Using `scala compilers`

To use **`scalac`**, or other **Groovy Compilers** from the source directory,
run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src/main/scala
scalac Fibonacci.scala
```

#### Using `gradle`

From the source directory, you can run:

```
gradle build
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

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`sbt`**, **`gradle`**, **`maven`**, and **`ant`**, or manually with
**`scalac`**, or other **Scala Compilers**. You can run the program from
either the root directory or the source directory.

### Root Directory

#### Using `sbt`

From the root directory, run one of the following:

```
sbt scala-fibonacci/run
```
```
sbt "project scala-fibonacci" run
```

#### Using `scala interpreter`

To use **`scala`** to run it directly from root directory:

```
scala scala/fibonacci/src/main/scala/Fibonacci.scala
```

#### Using `gradle`

From the root directory, run one of the following:

```
gradle scala-fibonacci
```
```
gradle scala:fibonacci:run
```

#### Using `maven`

To use **`maven`** from the root directory:

```
mvn exec:java -pl scala:fibonacci
```

<!--

#### Using `ant`

TODO:

-->

### Source Directory _(optional)_

#### Using `sbt`

From the source directory, you can run:

```
sbt run
```

#### Using `scala compilers`

If you used **`scalac`**, or other **Scala Compilers** for building the
program:

```
cd src/main/scala
java -cp .:$SCALA_HOME/lib/* fibonacci.Fibonacci
```
```
cd src/main/scala
scala fibonacci.Fibonacci
```

#### Using `scala interpreter`

To use **`scala`** to run it directly from source directory:

```
scala src/main/scala/Fibonacci.scala
```

#### Using `gradle`

From the source directory, you can run one of the following:

```
gradle run
```
```
gradle scala-fibonacci
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

## License

Licensed under [**MIT License**](LICENSE).
