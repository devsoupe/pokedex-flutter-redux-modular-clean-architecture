import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("debug") {
            dimension = "flavor-type"
            applicationId = "com.example.pokedex.dev"
            resValue(type = "string", name = "app_name", value = "Pokedex Debug")
        }
        create("release") {
            dimension = "flavor-type"
            applicationId = "com.example.pokedex"
            resValue(type = "string", name = "app_name", value = "Pokedex")
        }
    }
}