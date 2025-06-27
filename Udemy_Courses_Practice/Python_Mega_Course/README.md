# Python Mega Course Example Project

This is a basic task management application built using Flask as a reference implementation for the Python Mega Course from Udemy.

## Features

- Add a new task
- View all tasks
- Update an existing task
- Delete a task

## How to Run

1. Make sure you have Python installed (Python 3.7+).
2. Install Flask using pip:

```bash
pip install flask
```

3. Run the app:

```bash
python app.py
```

4. Use a REST client like Postman or browser to interact with:
- GET    `/tasks`
- POST   `/tasks`
- PUT    `/tasks/<id>`
- DELETE `/tasks/<id>`
