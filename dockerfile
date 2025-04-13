FROM python:3.12.0a4-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8888
CMD ["jupyter","notebook","--ip=0.0.0.0","--no-browser","--allow-root"]