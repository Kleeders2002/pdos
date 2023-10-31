FROM python:3.12-slim as build

WORKDIR /app

COPY requirements.txt ./
ENV HTTP_PROXY "http://proxylab.ucab.edu.ve:3128"
ENV HTTPS_PROXY "http://proxylab.ucab.edu.ve:3128"
RUN pip install -r requirements.txt

COPY . .

EXPOSE 4000

CMD ["flask", "run", "--host=0.0.0.0", "--port=4000"]
