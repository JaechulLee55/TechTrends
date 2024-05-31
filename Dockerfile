# Use a Python base image in version 3.8
FROM python:3.8

# Copying work dir
COPY /techtrends /app

WORKDIR /app

#Install packages defined in the requirements.txt file
RUN pip install -r requirements.txt

#initialized with the pre-defined posts in the init_db.py file
RUN python init_db.py

# application port
EXPOSE 3113

#command
CMD ["python", "app.py"]