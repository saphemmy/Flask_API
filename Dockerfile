FROM python:3.10

EXPOSE 5000

# Install dependencies
WORKDIR /app

# Copy the rest of the application code
COPY requirements.txt .

# Install the requirements
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Start the Flask server
CMD ["flask", "run", "--host", "0.0.0.0"]