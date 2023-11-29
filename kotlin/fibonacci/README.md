# `Kotlin/Fibonacci`

This is a **Fibonacci** program written in **Kotlin**.

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

* ```
  gradle kotlin:fibonacci:build
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  gradle build
  ```

You can also use `kotlinc` from the source directory:

* ```
  kotlinc fibonacci.kt -include-runtime -d kotlin-fibonacci.jar
  ```

## Running

### Root Directory

From the root directory run:

* ```
  gradle kotlin-fibonacci
  ```
* ```
  gradle kotlin:fibonacci:run
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  gradle run
  ```
* ```
  gradle kotlin-fibonacci
  ```

If you used `kotlinc` for building:

* ```
  java -jar kotlin-fibonacci.jar
  ```

## License

Licensed under [**MIT License**](LICENSE).
