# Hibernate and JPA with Spring Boot

## How to Run

1. Import into IDE (Eclipse/IntelliJ)
2. Run `Application.java`
3. Open Browser:
   - `http://localhost:8080/api/employees`
   - `http://localhost:8080/h2-console`

## API Endpoints

- `GET /api/employees` - list all employees
- `POST /api/employees` - add new employee

## Database

- In-memory H2 database
- Auto schema creation with `spring.jpa.hibernate.ddl-auto=update`

## Example POST Body

```json
{
  "name": "John",
  "role": "Developer"
}
```

## Output

```json
[
  {
    "id": 1,
    "name": "John",
    "role": "Developer"
  }
]
```