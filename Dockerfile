# Pull python
FROM python:3.11-slim-buster

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set dir
WORKDIR /src

# Install dependencies from requirements.txt
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .
