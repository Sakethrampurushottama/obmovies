FROM python:3.8

RUN mkdir /app

WORKDIR /app/

ADD . /app/

ENV LISTEN_PORT=5000
EXPOSE 5000

RUN pip install -r requirements.txt

CMD ["python", "/app/run.py"]