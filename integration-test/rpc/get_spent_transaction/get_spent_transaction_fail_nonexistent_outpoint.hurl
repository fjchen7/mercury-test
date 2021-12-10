POST {{mercury_testnet_host}}
{
  "id": 42,
  "jsonrpc": "2.0",
  "method": "get_spent_transaction",
  "params": [{
    "outpoint": {
      "tx_hash": "0xa4aee7ae950d7fb74271816566827832d50ebf3fc04234927314fd332c4cd113",
      "index": "0x2"
    },
    "structure_type": "Native"
  }]
}

HTTP/1.1 200
```{"jsonrpc":"2.0","error":{"code":-32001,"message":"Custom error: Error(-10090): \"Cannot find spent transaction\""},"id":42}```
