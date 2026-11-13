FROM jupyter/base-notebook

# Install requirements
# RUN pip install -r requirements.txt
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
RUN pip install --no-cache-dir nbconvert

# Set a custom working directory
WORKDIR /home/jovyan/work

# Run 02_Bank_Term_Deposit_Prediction_2.ipynb

COPY --chown=jovyan:users 02_Bank_Term_Deposit_Prediction_2.ipynb .
COPY --chown=jovyan:users bank-additional/ ./bank-additional/

CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "--inplace", "02_Bank_Term_Deposit_Prediction_2.ipynb"]
