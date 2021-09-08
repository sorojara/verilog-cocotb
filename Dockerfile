
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y iverilog 

RUN apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /src

WORKDIR /src

COPY . .

RUN pip install -r requirements.txt