FROM python:3-alpine

COPY ./service.py /opt/service/
COPY ./requirements.txt /opt/service/
WORKDIR /opt/service

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["service.py"]