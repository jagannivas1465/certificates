# Full Stack Java Spring Boot App for Tomcat Deployment

## How to Run

1. Run `mvn clean package` to build a WAR.
2. Copy `target/fullstack-java-tomcat.war` to `TOMCAT_HOME/webapps/`.
3. Start Tomcat using `startup.bat` or `startup.sh`.
4. Open browser: `http://localhost:8080/fullstack-java-tomcat/api/users`

## Features
- Java + Spring Boot
- RESTful API with `/api/users`
- Deployable WAR file
- Supports debugging/modification in Tomcat

## Output Sample

```json
[
  {
    "id": 1,
    "name": "Alice",
    "email": "alice@example.com"
  },
  {
    "id": 2,
    "name": "Bob",
    "email": "bob@example.com"
  }
]
```