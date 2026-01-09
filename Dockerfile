#1: Select the image of OS
FROM python:3.11-slim

#2: Select the working directory
WORKDIR /app

#3: Copy requirements.txt
COPY requirements.txt .

#4: Install required packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#5: Copy project files to another project folder
COPY . .

#6:Expose the port
EXPOSE 5000

#7: Run the command
CMD ["python", "app.py"]