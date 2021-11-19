# mercury-test

This project is a CLI regression test for [mercury JSONRPC methods](https://github.com/nervosnetwork/mercury/blob/dev/core/rpc/README.md)

## Quick start

### 1. Install `hurl`
This project uses [`hurl`](https://hurl.dev/docs/samples.html), a convenient CLI tools for calling and testing HTTP requests.

[Here](https://hurl.dev/docs/installation.html) is the installation documentation for `hurl`

### 2. Run tests

The test files are named as `*.hurl`. Each test file has ONE JSONRPC HTTP call.

Execute the command below to run all tests under `test_testnet` (you must specify the `mercury_testnet_host`)

```bash
find ./test_testnet -name '*.hurl' | xargs -I {} bash -c 'hurl --variable mercury_testnet_host="<your_mercury_testnet_host>" --test {}'
```

output

```
./test_testnet/get_balance_ok_2.hurl: RUNNING [1/1]
./test_testnet/get_balance_ok_2.hurl: SUCCESS
--------------------------------------------------------------------------------
Executed:  1
Succeeded: 1 (100.0%)
Failed:    0 (0.0%)
Duration:  117ms
./test_testnet/get_balance_ok_1.hurl: RUNNING [1/1]
./test_testnet/get_balance_ok_1.hurl: SUCCESS
--------------------------------------------------------------------------------
Executed:  1
Succeeded: 1 (100.0%)
Failed:    0 (0.0%)
Duration:  103ms
```

If you want to see what the response looks like, just run the command below

```bash
hurl --variable mercury_testnet_host="<your_mercury_testnet_host>" ./test_testnet/get_balance_ok_1.hurl | jq
```
output
```json
{
  "jsonrpc": "2.0",
  "result": {
    "balances": [
      {
        "ownership": {
          "type": "Address",
          "value": "ckt1qyqg88ccqm59ksxp85788pnqg4rkejdgcg2qxcu2qf"
        },
        "asset_info": {
          "asset_type": "CKB",
          "udt_hash": "0x0000000000000000000000000000000000000000000000000000000000000000"
        },
        "free": "4065444781201",
        "occupied": "209200000000",
        "freezed": "0",
        "claimable": "0"
      }
    ],
    "tip_block_number": 3482945
  },
  "id": 100
}
```

## Contributing

Writing hurl file is very easy. Just check the existent tests under [`test_testnet`](./test_testnet) and you will know how to write.

For more please check the [samples in hurl official site](https://hurl.dev/docs/samples.html).
