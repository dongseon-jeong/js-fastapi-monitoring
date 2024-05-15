FROM python:3.7
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
RUN pip uninstall pickle
RUN pip install --upgrade pip
RUN pip install pickle
WORKDIR /js-fastapi-monitoring
COPY . /js-fastapi-monitoring
EXPOSE 80
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "80"]