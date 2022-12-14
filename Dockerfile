FROM python:3.7-alpine

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 9000

#CMD ["uvicorn","app.main:app", "--reload","--host=0.0.0.0","--port=9000"]
CMD ["uvicorn","app.main:app","--host=0.0.0.0","--port=9000"]

