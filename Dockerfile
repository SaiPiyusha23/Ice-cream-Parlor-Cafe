
FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV NAME icecream-parlor-cafe

CMD ["python", "ice_cream_parlor.py"]