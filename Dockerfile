# Pull basic img
FROM python:latest

 # Copy main/server file
COPY run.py run.py

# Requiremts/dependencies files
COPY requirements.txt requirements.txt

# Execute dependencis installation
RUN pip install -r requirements.txt

# Execute Application Server
ENTRYPOINT [ "python", "run.py" ]