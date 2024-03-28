plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.8.0"
}

rootProject.name = "codes"

val directories = listOf("java", "kotlin", "groovy", "scala")
directories.forEach { dirName ->
    file(dirName).listFiles()?.filter { it.isDirectory }?.forEach { subdir ->
        include("${dirName}:${subdir.name}")
    }
}
