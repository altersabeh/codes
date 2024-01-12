lazy val root = (project in file(".")).aggregate(hello, greeter)

lazy val hello = project.withId("scala-hello").in(file("scala/hello"))
lazy val greeter = project.withId("scala-greeter").in(file("scala/greeter"))