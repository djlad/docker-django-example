FROM python:3
WORKDIR /code
COPY controlserver .

RUN pip install --upgrade https://github.com/celery/celery/tarball/master
RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py createsuperuser
CMD [ "python3", "-u", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000