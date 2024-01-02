tasks {
    jar {
        archiveBaseName.set("scala-${projectDir.name}")
        archiveVersion.set("${version}")
        archiveExtension.set("jar")
        manifest {
            attributes["Main-Class"] = "${projectDir.name}.${projectDir.name.capitalize()}"
            attributes("Description" to "${projectDir.name.capitalize()} World program written in Scala")
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        from(configurations.compileClasspath.get().map { if(it.isDirectory) it else zipTree(it) })
    }

    register<JavaExec>("scala-${projectDir.name}") {
        description = "${projectDir.name.capitalize()} World program written in Scala"
        group = "Application (Scala)"
        classpath = sourceSets["main"].runtimeClasspath
        mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}")
        standardInput = System.`in`
    }

    application {
         applicationName = "scala-${projectDir.name}"
         mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}")
    }
}
