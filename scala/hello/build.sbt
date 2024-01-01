val scala3Version = "3.3.1"

lazy val hello = project
  .withId("scala-hello")
  .in(file("."))
  .settings(
    name := "scala-hello",
    version := "0.1.0-SNAPSHOT",
    scalaVersion := scala3Version,
    libraryDependencies += "org.scalameta" %% "munit" % "0.7.29" % Test
  )
