FROM python:3

# Set Environment variables
# ENV PYTHONUNBUFFERED=1

# Copy the Pipfile and Pipfile.lock to the container
COPY Pipfile Pipfile.lock /app/

COPY ./requirements.txt /var/www/requirements.txt

# Install dependencies
WORKDIR /app

RUN pip install pipenv && pipenv install --system --deploy --ignore-pipfile

RUN pip install -r /var/www/requirements.txt

# Copy the rest of the application code
COPY . /app

# Set the working directory
WORKDIR /app/store

EXPOSE 80

# Start the Flask server
CMD ["gunicorn", "-b", "0.0.0.0:80", "store:create_app()"]