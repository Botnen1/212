FROM python:3.11-rc-bullseye
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . /Users/hansc/Documents/BachelorINFOVIT/Semester3H22/INFO212/django-test/mysite
RUN python manage.py makemigrations
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


