FROM python:3.10
RUN mkdir /Demo
WORKDIR /Demo
COPY . /Demo
RUN pip install -r requirements.txt
RUN python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
