Global / scalaVersion := "3.4.0"

lazy val hello = project
  .withId("scala-hello")
  .in(file("."))
  .settings(
    name := "scala-hello",
    version := "1.0.0",
    description := "Hello World program written in Scala",
    licenses := List(
      "MIT" -> url("https://github.com/altersabeh/codes/blob/main/LICENSE")
    ),
    scmInfo := Some(
      ScmInfo(
        url("https://github.com/altersabeh/codes"),
        "git@github.com:altersabeh/codes.git"
      )
    ),
    homepage := Some(url("https://github.com/altersabeh/codes#README")),
    developers := List(
      Developer(
        "altersabeh",
        "Alter Sabeh",
        "betamaximum22@gmail.com",
        url("https://github.com/altersabeh")
      )
    ),
    target := {
      val baseDir = baseDirectory.value
      val dirName = baseDir.getName
      file(baseDir + "/../../dist/scala/sbt/" + dirName)
    },
    startYear := Some(2023),
    libraryDependencies += "org.scala-lang" %% "scala3-library" % scalaVersion.value
  )
