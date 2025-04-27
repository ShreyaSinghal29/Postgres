FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the 'requirements.txt' file into the container
COPY requirements.txt .

# Install dependencies from 'requirements.txt'
RUN pip install -r requirements.txt

# Copy the Streamlit app (main.py) into the container
COPY main.py .

# Expose the port that Streamlit uses by default (8502)
EXPOSE 8502

# Command to run the Streamlit app
CMD ["streamlit", "run", "main.py", "--server.port=8502", "--server.address=0.0.0.0"]
