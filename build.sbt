val scala3Version = "3.3.1"

lazy val root = (project in file(".")).aggregate(hello)

lazy val hello = project.withId("scala-hello").in(file("scala/hello"))
