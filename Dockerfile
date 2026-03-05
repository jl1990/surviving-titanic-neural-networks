# Use an official Jupyter base image
FROM jupyter/scipy-notebook:latest

# Set the working directory in the container
WORKDIR /home/jovyan/work

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# The base image already has a CMD to start Jupyter Notebook
