# `Java/Hello`

This is a **Hello World** program written in **Java**.

## Prerequisite

To run and build this program you need to install:

* [**Gradle Build Tool**](https://gradle.org/install/)
  * `gradle`

* [**Java Development Kit (JDK)**](https://sdkman.io/jdks)
  * `java`
  * `javac`

## Building

### Root Directory

From the root directory run the following:

* `gradle java:hello:build`

### Source Directory _(optional)_

From the source directory you can run:

* `gradle build`

You can also use `javac` from the source directory:

* `javac Hello.java`

## Running

### Root Directory

From the root directory run:

* `gradle java-hello`
* `gradle java:hello:run`

You can also use `java` to run it directly:

* `java java/hello/src/hello/Hello.java`

### Source Directory _(optional)_

From the source directory you can run:

* `gradle run`
* `gradle java-hello`

If you used `javac` for building:

* `cd ..`
* `java hello.Hello`

You can also use `java` to run it directly:

* `java Hello.java`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
