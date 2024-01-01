plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.7.0"
}

rootProject.name = "codes"

val directories = listOf("java", "kotlin", "groovy")
directories.forEach { dirName ->
    file(dirName).listFiles()?.filter { it.isDirectory }?.forEach { subdir ->
        include("${dirName}:${subdir.name}")
    }
}
