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
    echo "Test it and type in your cli in this project dir:"
    sleep 1
    echo "First cmd:"
    echo "\"./bin/gaiad-v7.0.3-darwin-amd64 q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
        echo ""
    sleep 1
    echo "Second cmd:"
    echo "\"./bin/gaiad-v7.0.3-darwin-amd64 tx staking delegate cosmosvaloper1gddnzwdchpp24446k55tdhctfmjsg6ls947g7p 10000000stake --from tl --home app-home/ --keyring-backend test --chain-id autostake\""
    echo ""
    sleep 1
    echo "Repeat this cmd to see changes:"
    echo "\"./bin/gaiad-v7.0.3-darwin-amd64 q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    exit 1
    else
    echo "Test it and type in your cli in this project dir:"
    sleep 1
    echo "First cmd:"
    echo "\"gaiad q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    echo ""
    sleep 1
    echo "Second cmd:"
    echo "\"gaiad tx staking delegate cosmosvaloper1gddnzwdchpp24446k55tdhctfmjsg6ls947g7p 10000000stake --from tl --home app-home/ --keyring-backend test --chain-id autostake\""
    echo ""
    sleep 1
    echo "Repeat this cmd to see changes:"
    echo "\"gaiad q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3\""
    exit 1
fi
