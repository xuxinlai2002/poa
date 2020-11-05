#!/bin/sh
nohup ./geth --datadir signer1/data \
--rpc \
--rpcapi db,eth,net,web3,personal \
--cache=2048 \
--port 18024 \
--rpcport 20636 \
--rpcaddr "0.0.0.0" \
--rpccorsdomain "*" \
--networkid 121 \
--allow-insecure-unlock \
--unlock 0x5583ae36fbbd066599b7972a0f265bbbba4d1ab5 \
--password myPwd \
--gcmode archive \
--mine \
--minerthreads=1 &

