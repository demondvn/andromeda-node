# andromeda-node

## Build
    docker build . -t andromeda
## Run
    docker run  -d -v /mnt/blockstore/andromeda:/root/.andromedad --restart unless-stopped --name andromeda -e NODE_MONIKER=MonPham -p 26656:26656 andromeda
## Snapshot 
    docker stop andromeda
    curl -L https://snapshot.yeksin.net/andromeda/data.tar.lz4 | lz4 -dc - | tar -xf - -C /mnt/blockstore/andromeda
    wget https://snapshot.yeksin.net/andromeda/addrbook.json -O /mnt/blockstore/andromeda/config/addrbook.json
    docker start andromeda
## If Moniker
    update config/config.toml edit moniker and restart
## continue with 
`https://nodejumper.io/andromeda-testnet/installation`
