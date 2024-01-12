Global / scalaVersion := "3.3.1"

lazy val greeter = project
  .withId("scala-greeter")
  .in(file("."))
  .settings(
    name := "scala-greeter",
    version := "1.0.0",
    description := "Greeter program written in Scala",
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
