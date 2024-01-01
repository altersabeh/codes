tasks {
    jar {
        archiveBaseName.set("groovy-${projectDir.name}")
        archiveVersion.set("${version}")
        archiveExtension.set("jar")
        manifest {
            attributes["Main-Class"] = "${projectDir.name}.${projectDir.name.capitalize()}"
            attributes("Description" to "${projectDir.name.capitalize()} program written in Groovy")
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        from(configurations.compileClasspath.get().map { if(it.isDirectory) it else zipTree(it) })
    }

    register<JavaExec>("groovy-${projectDir.name}") {
        description = "${projectDir.name.capitalize()} program written in Groovy"
        group = "Application (Groovy)"
        classpath = sourceSets["main"].runtimeClasspath
        mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}")
        standardInput = System.`in`
    }

    application {
        applicationName = "groovy-${projectDir.name}"
        mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}")
    }
}
