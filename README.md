# andromeda-node

## Build
    docker build . -t andromeda
## Run
    docker run  -d -v /mnt/blockstore/andromeda:/root/.andromedad --restart unless-stopped --name andromeda -e NODE_MONIKER=MonPham -p 26656:26656 andromeda
## If Moniker
    update config/config.toml edit moniker and restart
## continue with 
`https://nodejumper.io/andromeda-testnet/installation`
