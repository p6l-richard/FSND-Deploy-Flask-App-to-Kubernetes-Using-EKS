FROM  python:stretch

COPY . /udacity-example
WORKDIR /udacity-example

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]