FROM qmentasdk/minimal:latest

RUN apt-get update -y && \
    apt-get install -y apt-utils && \
    apt-get install -y sudo && \
    apt-get install -y nano && \
    apt-get install -y software-properties-common && \
    apt-get install -y cron && \
    apt-get install dos2unix && \
    apt-get install -y zip unzip 


RUN mkdir /SDKTest
COPY . /SDKTest

COPY tool.py /root/tool.py
COPY run.sh /root/run.sh
COPY zip.sh /root/zip.sh

RUN dos2unix /root/run.sh
RUN dos2unix /root/zip.sh

RUN pip install pandas

ADD crontab /etc/cron.d/crontab
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/crontab
# Apply cron job
RUN crontab /etc/cron.d/crontab
# Create the log file to be able to run tail
RUN touch /var/log/cron.log
# Run the command on container startup
CMD cron && tail -f /var/log/cron.log
