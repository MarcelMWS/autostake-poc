# Autostake-poc

## Requirements

```bash
docker
```

tested on Mac with docker version: 4.12.0, Engine: 20.10.17, Compose: v2.10.2

**optional** requirements:

```bash
# (in default go path ~/go/bin/gaiad)
gaiad 
```

otherwise, just run the following command for gaiad:

```bash
./bin/gaiad-v7.0.3-darwin-amd64
```


Ref:

https://github.com/cosmos/gaia/tree/v7.0.3

Gaia version:

```bash
name: gaia
server_name: gaiad
version: v7.0.3
commit: d0884c29aac4c1e647b0a82f3df31515d2bd06a3
build_tags: netgo,ledger
go: go version go1.18.2 darwin/amd64
```

### Info

Cosmos-based projects contains the `gaiad tx distribution withdraw-rewards` and `gaiad tx distribution withdraw-rewards --commission` command to withdraw your rewards via a manual triggered transaction.

There are several automatic withdraw / auto compound projects like https://restake.app/ https://github.com/eco-stake/restake

Restake use the authz module and an additional service for validators to withdraw rewards.

In this project I implemented withdraw rewards directly into chain app. After staking/delegating you'll be able to watch your account balance increasing at every block. You don't need to enter manually `gaiad tx distribution withdraw-rewards` and `gaiad tx distribution withdraw-rewards --commission` command any more.

This is a showcase project and it setups a local testnet in docker on your machine.

The withdrawing code isn't released here, but you can use my "gaiad" binary in `bin/` folder to play with and test it :)

### Start

In this folder:

```bash
./start.sh
```

### Test

```bash
gaiad q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3

gaiad tx staking delegate cosmosvaloper1gddnzwdchpp24446k55tdhctfmjsg6ls947g7p 10000000stake --from tl --home app-home/ --keyring-backend test --chain-id autostake

## Repeat
gaiad q bank balances cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3
```

### Stop / Reset database

```bash
./stop_reset.sh
```

### Additional Info

Chain-id: `autostake`

Test Validator operator address (e.x. for staking): `cosmosvaloper1gddnzwdchpp24446k55tdhctfmjsg6ls947g7p`

Test Validator account with name bl and address: `cosmos1gddnzwdchpp24446k55tdhctfmjsg6lsqp2ajj` and 1000000000000stake

Test User account with name tl and address: `cosmos1hk06zl6krdnamxljwheq7372kf5g6688gmdhc3` and 1000000000000stake

RPC on your local machine: `http://localhost:26657`

You can use the existing accounts to send coins/balances to your or other newly created accounts.
