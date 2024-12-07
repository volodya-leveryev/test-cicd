FROM python:3.12-slim
WORKDIR /web
COPY . .
EXPOSE 80
RUN pip install flask gunicorn
CMD gunicorn -b 0.0.0.0:80 app:app
