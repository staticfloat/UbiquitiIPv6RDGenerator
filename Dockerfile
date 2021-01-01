FROM python

WORKDIR /app
STOPSIGNAL SIGINT
ENV FLASK_APP=main
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt && rm /app/requirements.txt

ADD *.py *.html /app/
CMD ["flask", "run", "--host=0.0.0.0"]