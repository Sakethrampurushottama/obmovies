FROM python:3.9


COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

COPY . /usr/src/app/

ENV LISTEN_PORT=5000
EXPOSE 5000

CMD ["ls -a", "/usr/src/app/"]

CMD ["python", "/usr/src/app/run.py"]
