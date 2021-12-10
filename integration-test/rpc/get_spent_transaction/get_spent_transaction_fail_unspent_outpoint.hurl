POST {{mercury_testnet_host}}
{
  "id": 42,
  "jsonrpc": "2.0",
  "method": "get_spent_transaction",
  "params": [{
    "outpoint": {
      "tx_hash": "0xc09aa431e541f20ee0f0dca2aea4ea0a1e64c06f190685db9a7538efe90a0c13",
      "index": "0x2"
    },
    "structure_type": "Native"
  }]
}


HTTP/1.1 200
```{"jsonrpc":"2.0","error":{"code":-32001,"message":"Custom error: Error(-10090): \"Cannot find spent transaction\""},"id":42}```
