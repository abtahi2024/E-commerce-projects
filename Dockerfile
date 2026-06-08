FROM python:3.12

WORKDIR /store

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]