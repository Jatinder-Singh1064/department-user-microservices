# department-user-microservices
Developed 2 microservices (Department and User) using Java, Spring Boot which are communicating with each other using RestTemplate. Logged the microservice interaction using @Slf4j logging library. Used Netflix component Eureka for Service Registry and Discovery and created a separate project for this. Also, implemented and created a separate project for API Gateway through which application users will communicate to microservices through API Gateway so that direct communication to microservice can be avoided. Handled Fault Tolerance and Resilience using Hystrix by implementing Circuit Breaker pattern with Hystrix Dashboard to monitor the health of each micro-service circuit breaker. Apart from this used Spring Cloud Config to read the application configuration properties from the GitHub repository hosted YAML file. Used Spring Zipkin and Sleuth to implement the distributed Log tracing for all the microservices.

Department Microservice
User Microservice
User PostgreSQL for database
Added Logging to Microservices using @Slf4j Logging library
Implemented Service Discovery and Registry using Eureka Server
Implemented API Gateway
Implemented Circuit Breaker using Hystrix
Setup of Hystrix Dashboard
Implemented Cloud Config Server
Used GitHub Repo for Config Server (dept-user-config-server repo)
Implemented Distributed Log Tracing using Zipkin and Sleuth

Tools used: IntelliJ IDEA, Postman, PostgreSQL pgAdmin, GitHub Repo.
