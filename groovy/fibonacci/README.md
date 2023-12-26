# `Java/Fibonacci`

This is a **Fibonacci** program written in **Java**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Gradle Build Tool**](https://gradle.org/install/#with-a-package-manager) | **`gradle`** | &#9989; | &#9989; | &#10062; | **`sdk install gradle`**<br>or<br>**`apt install gradle`** |
| [**Apache Groovy**](https://groovy.apache.org/download.html) | **`groovy`**<br>**`groovyc`**<br>**`groovysh`** | &#9989; | &#9989; | &#10062; | **`sdk install groovy`**<br>or<br>**`apt install groovy`** |
| [**OpenJDK**](https://openjdk.org/install/) | **`java`**<br>**`javac`** | &#9989; | &#9989; | &#10062; | **`sdk install java x.y.z-open`**<br>or<br>**`apt install openjdk-x-jdk`** |
| [**Eclipse Adoptium Temurin**](https://adoptium.net/installation/linux/) | **`java`**<br>**`javac`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-tem`**<br>or<br>**`apt install temurin-x-jdk`** |
| [**Oracle GraalVM**](https://www.graalvm.org/downloads/#) | **`java`**<br>**`javac`**<br>**`native-image`** | &#10062; | &#9989; | &#9989; | **`sdk install java x.y.z-graal`** |
| [**Apache Maven**](https://maven.apache.org/install.html) | **`mvn`** | &#10062; | &#10062; | &#9989; | **`sdk install maven`**<br>or<br>**`apt install maven`** |
| [**Apache Ant**](https://ant.apache.org/bindownload.cgi) | **`ant`** | &#10062; | &#10062; | &#9989; | **`sdk install ant`**<br>or<br>**`apt install ant`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`gradle`**, **`maven`**, and **`ant`**, or manually with **`groovyc`**, or
other **Groovy Compilers**. You can initiate the build process either from the
root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory:

```
gradle groovy:fibonacci:build
```

#### Using `maven`

To use **`maven`** from the root directory, run one of the following:

```
mvn compile -pl groovy:fibonacci
```
```
mvn package -pl groovy:fibonacci
```

<!--

#### Using `ant`

TODO:

-->

### Source Directory _(optional)_

#### Using `gradle`

From the source directory, you can run:

```
gradle build
```

#### Using `groovy compilers`

To use **`groovyc`**, or other **Groovy Compilers** from the source directory,
run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src/main/groovy
groovyc fibonacci.groovy
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
tools like **`gradle`**, **`maven`**, and **`ant`**, or manually with
**`groovyc`**, or other **Groovy Compilers**. You can run the program from
either the root directory or the source directory.

### Root Directory

#### Using `gradle`

From the root directory, run one of the following:

```
gradle groovy-fibonacci
```
```
gradle groovy:fibonacci:run
```

#### Using `groovy interpreter`

To use **`groovy`** to run it directly from root directory:

```
groovy groovy/fibonacci/src/main/groovy/fibonacci.groovy
```

#### Using `maven`

To use **`maven`** from the root directory:

```
mvn exec:java -pl groovy:fibonacci
```

<!--

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
gradle groovy-fibonacci
```

#### Using `groovy compilers`

If you used **`groovyc`**, or other **Groovy Compilers** for building the
program:

```
cd src/main/groovy
java -cp .:$GROOVY_HOME/lib/*.jar fibonacci.Fibonacci
```

#### Using `groovy interpreter`

To use **`groovy`** to run it directly from source directory, run one of the
following:

```
groovy src/main/groovy/fibonacci
```
```
groovy src/main/groovy/fibonacci.groovy
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
