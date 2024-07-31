FROM python:3.10
WORKDIR /app
RUN apt -qq update && \
    apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo neofetch && \
    apt-get install wget -y -f && \
    apt-get install fontconfig -y -f
COPY . /app/
RUN pip install -r requirements.txt
CMD ["python3", "Ashu.py"]
