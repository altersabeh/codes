tasks {
    jar {
        archiveBaseName.set("kotlin-${projectDir.name}")
        archiveVersion.set("${version}")
        archiveExtension.set("jar")
        manifest {
            attributes["Main-Class"] = "${projectDir.name}.${projectDir.name.capitalize()}Kt"
            attributes("Description" to "${projectDir.name.capitalize()} World program written in Kotlin")
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        from(configurations.compileClasspath.get().map { if(it.isDirectory) it else zipTree(it) })
    }

    register<JavaExec>("kotlin-${projectDir.name}") {
        description = "${projectDir.name.capitalize()} World program written in Kotlin"
        group = "Application (Kotlin)"
        classpath = sourceSets["main"].runtimeClasspath
        mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}Kt")
        standardInput = System.`in`
    }

    application {
         applicationName = "kotlin-${projectDir.name}"
         mainClass.set("${projectDir.name}.${projectDir.name.capitalize()}Kt")
    }
}
