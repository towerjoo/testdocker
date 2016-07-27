FROM ubuntu
EXPOSE 8000
RUN apt-get update && apt-get install -y python-pip && pip install -r requirements.txt && python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
