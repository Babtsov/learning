# Spring Boot Notes
### [Spring Framework Reference Documentation](http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle)  


## Javadocs
[javadoc for spring annotations](http://docs.spring.io/spring-framework/docs/4.2.6.RELEASE/javadoc-api/org
/springframework/web/bind/annotation/package-summary.html)

[javadoc for the spring controllers](http://docs.spring.io/spring/docs/current/spring-framework-reference/
htmlsingle/#mvc-controller)

###  RESTful Web Service
```java
@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(), String.format(template, name));
    }
}
```
```@RequestMapping``` annotation ensures that HTTP requests to /greeting are mapped to the greeting() method.
```@RequestParam``` binds the value of the query string parameter name into the name parameter of the greeting() method. 
This query string parameter is optional (required=false by default): if it is absent in the request, the defaultValue 
of "World" is used. to set the param, use http://localhost:8080/greeting?name=myName  
```@RestController``` marks the class as a controller where every method returns a domain object instead of a view. 
It’s shorthand for @Controller and @ResponseBody rolled together.

####[@RequestBody and @ResponseBody](http://www.beabetterdeveloper.com/2013/07/spring-mvc-requestbody-and-responsebody.html)

```java
    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public BookCase getBookCase() {
        return this.bookCase;
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void setBookCase(@RequestBody BookCase bookCase) {
        this.bookCase = bookCase;
    }
```
Here is an interation
```
1.)
PUT /bookcase
Content-Type: text/csv
"123","Spring in Action"
Response
204 No Content
2.) 
GET /bookcase
Accept: text/csv
Response
200 OK
"123","Spring in Action"
```
####[@Configuration & @Bean Annotations](http://www.tutorialspoint.com/spring/spring_java_based_configuration.htm) 
```java
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```
```@SpringBootApplication``` adds @Configuration, @EnableAutoConfiguration, @ComponentScan  
Annotating a class with the @Configuration indicates that the class can be used by the Spring IoC container as a source of bean definitions. The @Bean annotation tells Spring that a method annotated with @Bean will return an object that should be registered as a bean in the Spring application context. The simplest possible @Configuration class would be as follows:  
```java
package com.tutorialspoint;
import org.springframework.context.annotation.*;
@Configuration
public class HelloWorldConfig {

   @Bean 
   public HelloWorld helloWorld(){
      return new HelloWorld();
   }
}
```
equivalent to the following XML:
```xml
<beans>
   <bean id="helloWorld" class="com.tutorialspoint.HelloWorld" />
</beans>
```

####[Spring @Component, @Service, @Repository, @Controller Difference](http://javapapers.com/spring/spring-component-service-repository-controller-difference/)
In a multitier application, we will have different layers like presentation, service, business, data access etc. When a class is to be annotated for auto-detection by Spring, then we should use the respective stereotype as below.  
@Component – generic and can be used across application.  
@Service – annotate classes at service layer level.  
@Controller – annotate classes at presentation layers level, mainly used in Spring MVC.  
@Repository – annotate classes at persistence layer, which will act as database repository.  

[@Component vs @Bean](http://stackoverflow.com/questions/10604298/spring-component-versus-bean)

### Consuming a RESTful Web Service
```java
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true)
public class Quote {...}
```
```@JsonIgnoreProperties``` from the Jackson JSON processing library indicates that any properties not bound in this type should be ignored.  
```java
@SpringBootApplication
public class Application implements CommandLineRunner {
    private static final Logger log = LoggerFactory.getLogger(Application.class);
    public static void main(String args[]) {
        SpringApplication.run(Application.class);
    }
    @Override
    public void run(String... args) throws Exception {
        RestTemplate restTemplate = new RestTemplate();
        Quote quote = restTemplate.getForObject("http://gturnquist-quoters.cfapps.io/api/random", Quote.class);
        log.info(quote.toString());
    }
}
```
[REST template documentation](http://docs.spring.io/spring/docs/current/javadoc-api/org/springframework/web/client/RestTemplate.html)  
[restcontroller vs controller with diagrams](https://www.genuitec.com/spring-frameworkrestcontroller-vs-controller/)

####Spring extras
[systemEnvironment reference](http://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/core/env/StandardEnvironment.html) [Spring Expression language](http://docs.spring.io/spring/docs/current/spring-framework-reference/html/expressions.html)

