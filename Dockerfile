FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10
WORKDIR /main
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["uvicorn", "main.main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "80"]