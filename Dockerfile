FROM python:3.7

ARG CONSUMER_KEY
ENV CONSUMER_KEY=${CONSUMER_KEY}
ARG CONSUMER_SECRET
ENV CONSUMER_SECRET=${CONSUMER_SECRET}
ARG ACCESS_TOKEN
ENV ACCESS_TOKEN=${ACCESS_TOKEN}
ARG ACCESS_TOKEN_SECRET
ENV ACCESS_TOKEN_SECRET=${ACCESS_TOKEN_SECRET}

RUN mkdir src/
COPY . src/
WORKDIR src/
RUN pip3 install -r requirements.txt

EXPOSE 8501

CMD streamlit run twitter-filt/twit-filt.py
