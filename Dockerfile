FROM python:3.11
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ADD fetch fetch
RUN chmod +x fetch
CMD ["sh"]
