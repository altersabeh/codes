# `Kotlin/Hello`

This is a **Hello World** program written in **Kotlin**.

## Prerequisite

To run and build this program you need to install:

* [**Gradle Build Tool**](https://gradle.org/install/)
  * `gradle`

* [**Kotlin**](https://sdkman.io/sdks#kotlin)
  * `kotlinc`

* [**Java Development Kit (JDK)**](https://sdkman.io/jdks)
  * `java`

## Building

### Root Directory

From the root directory run the following:

* `gradle kotlin:hello:build`

### Source DIrectory _(optional)_

From the source directory you can run:

* `gradle build`

You can also use `kotlinc` from the source directory:

* `kotlinc hello.kt -include-runtime -d kotlin-hello.jar`

## Running

### Root Directory

From the root directory run:

* ` gradle kotlin-hello`
* ` gradle kotlin:hello:run`

### Source DIrectory _(optional)_

From the source directory you can run:

* `gradle run`
* `gradle kotlin-hello`

If you used `kotlinc` for building:

* `java -jar kotlin-hello.jar`

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
