FROM python:slim


WORKDIR /app

COPY requirements.txt requirements.txt

#main
RUN pip install -r requirements.txt
COPY . /app/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]