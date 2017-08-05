FROM cloudera-cdsw-docker-repo.jfrog.io/cdsw/engine:1
RUN git clone https://github.com/chezou/cdsw-simple-serving-python && \
    cd cdsw-simple-serving-python && \
    pip install --upgrade pip && \
    pip install -r requirements-webapp.txt && \
    cd /home/cdsw && \
    wget --quiet "https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz" && \
    tar -xzf spark-2.2.0-bin-hadoop2.7.tgz

EXPOSE 5000

CMD ["/home/cdsw/spark-2.2.0-bin-hadoop2.7/bin/spark-submit", "/home/cdsw/cdsw-simple-serving-python/serving/web_app.py"]
