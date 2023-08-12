FROM python:3.8-alpine
ENV PYTHONBUFFERED=1

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev


WORKDIR /django

COPY requirements.txt requirements.txt


#main
RUN pip install -r requirements.txt
COPY . /app/ 

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]