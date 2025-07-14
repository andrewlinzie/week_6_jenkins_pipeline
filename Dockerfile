# Step 1: Use an official Python runtime as a base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the contents of your local directory into the container
COPY . /app

# Step 4: Install the dependencies
RUN pip install -r requirements.txt

# Step 5: Expose the port your Flask app runs on
EXPOSE 5000

# Step 6: Define the default command to run your app
CMD ["python", "app.py"]
