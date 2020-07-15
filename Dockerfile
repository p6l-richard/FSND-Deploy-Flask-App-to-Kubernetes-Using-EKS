FROM  python:stretch

COPY . /udacity-deployment
WORKDIR /udacity-deployment

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]