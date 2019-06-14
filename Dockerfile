# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /mango

# Install dependencies
RUN pip install pipenv
COPY Pipfile Pipfile.lock /mango/
RUN pipenv install --system

# Copy project
COPY . /mango/