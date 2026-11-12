FROM jupyter/base-notebook

# Install requirements
# RUN pip install -r requirements.txt
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

# Set a custom working directory
WORKDIR /app
