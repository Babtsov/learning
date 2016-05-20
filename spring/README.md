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

```java
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```
```@SpringBootApplication``` adds @Configuration, @EnableAutoConfiguration, @ComponentScan

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



