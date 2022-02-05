#!/bin/bash
# Pedro Pavan (uknbr)
./cpuminer -a ${BTC_ALGO} -o stratum+tcp://${BTC_ALGO}.${NH_REGION}.nicehash.com:${NH_PORT} -u ${BTC_ADDR}.${WORKER_NAME} -t ${WORKER_THREAD}