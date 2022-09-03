#!/bin/bash

# Check dependencies.
if [ ! -f /usr/local/bin/docker ]; then 
    echo "docker is not installed \"/usr/local/bin/\", please install and set your path ..."
    exit 1
fi

echo "Start local testnet..."
docker compose up -d


# Check gaiad dependencies.
if [ ! -f ~/go/bin/gaiad ]; then 
    echo "Test it with \"./bin/gaiad-v7.0.3-darwin-amd64 q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    sleep 1
    echo "Test it with \"./bin/gaiad-v7.0.3-darwin-amd64 q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    sleep 1
    echo "Test it and repeat \"./bin/gaiad-v7.0.3-darwin-amd64 tx staking delegate cosmosvaloper1gddnzwdchpp24446k55tdhctfmjsg6ls947g7p 10000000stake --from tl --home app-home/ --keyring-backend test --chain-id autostake\""
    sleep 1
    exit 1
    else
    echo "Test it with \"gaiad q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    sleep 1
    echo "Test it with \"gaiad tx staking delegate cosmosvaloper1gddnzwdchpp24446k55tdhctfmjsg6ls947g7p 10000000stake --from tl --home app-home/ --keyring-backend test --chain-id autostake\""
    sleep 1
    echo "Test it and repeat \"gaiad q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    sleep 1
    exit 1
fi


