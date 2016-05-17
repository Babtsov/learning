#Gradle
##[spring.io guide to Gradle](http://spring.io/guides/gs/gradle/)  
default path expected ```mkdir -p src/main/java/hello```    
**```gradle tasks``` shows list of available tasks.**   
```gradle build``` This task compiles, tests, and assembles the code into a JAR file.
###Gradle Wrapper  
The Gradle Wrapper consists of a batch script for Windows and a shell script for OS X and Linux.
```groovy
task wrapper(type: Wrapper) {
    gradleVersion = '2.3'
}
```
**```gradle wrapper``` downloads and initializes the wrapper scripts**   
```./gradlew build``` runs the wrapper script to perform the build task  
To make the code runnable, use gradle’s application plugin. Add to build.gradle file.
```groovy
apply plugin: 'application'
mainClassName = 'hello.HelloWorld'
```
```./gradlew run``` runs the code using the wrapper.  
