FROM cpu-opt:latest
WORKDIR /root/cpuminer-multi
COPY run.sh .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]