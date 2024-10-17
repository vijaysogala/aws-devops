# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the project dependecies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port the flask application will be listening on 
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application 
CMD ["python","app.py"]
