FROM postgres:9.6.2
RUN apt update && apt install -y netcat
ENV SLEEP_BEFORE_EXEC 0
COPY . /opt/
CMD bash /opt/exec.sh
