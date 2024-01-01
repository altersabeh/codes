tasks {
    jar {
        archiveBaseName.set("java-${projectDir.name}")
        archiveVersion.set("${version}")
        archiveExtension.set("jar")
        manifest {
            attributes["Main-Class"] = "${projectDir.name}.${projectDir.name.capitalize()}"
            attributes("Description" to "${projectDir.name.capitalize()} World program written in Java")
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        from(configurations.compileClasspath.get().map { if (it.isDirectory) it else zipTree(it) })
    }

    register<JavaExec>("java-${projectDir.name}") {
        group = "Application (Java)"
        description = "${projectDir.name.capitalize()} World program written in Java"
        classpath = sourceSets["main"].runtimeClasspath
        mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}")
        standardInput = System.`in`
    }

    application {
        applicationName = "java-${projectDir.name}"
        mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}")
    }
}
