# `Java/Greeter`

This is a **Greeter** program written in **Java**.

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

* `gradle java:greeter:build`

### Source DIrectory _(optional)_

From the source directory you can run:

* `gradle build`

You can also use `javac` from the source directory:

* `javac greeter.java`

## Running

### Root Directory

From the root directory run:

* ` gradle java-greeter`
* ` gradle java:greeter:run`

You can also use `java` to run it directly:

* `java java\greeter\greeter.java`

### Source DIrectory _(optional)_

From the source directory you can run:

* `gradle run`
* `gradle java-greeter`

If you used `javac` for building:

* `java greeter`

You can also use `java` to run it directly:

* `java greeter.java`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
