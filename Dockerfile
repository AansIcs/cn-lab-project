<<<<<<< HEAD
FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY lab.conf /etc/nginx/conf.d/lab.conf
COPY lab.crt /etc/nginx/ssl/lab.crt
COPY lab.key /etc/nginx/ssl/lab.key
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
=======
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 8000

CMD ["gunicorn", "--workers", "2", "--bind", "0.0.0.0:8000", "app:app"]
>>>>>>> e19f96091bd49a0ef3171a14931847aa4bc67709
