FROM python:3.7.8-slim

ENV HOST = "0.0.0.0"

EXPOSE 8111

WORKDIR /app/

COPY . ./

RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

CMD python3 app/main.py $HOST
