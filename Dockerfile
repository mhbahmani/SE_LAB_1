FROM python:3.9

# RUN mkdir /flask
WORKDIR /app

# Install lib 
COPY ./requirements.txt ./
COPY . /app

RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn"]
CMD ["-w", "4", "-b", "0.0.0.0:5000","run:app"]