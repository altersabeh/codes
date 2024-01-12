lazy val root = (project in file(".")).aggregate(hello)

lazy val hello = project.withId("scala-hello").in(file("scala/hello"))
