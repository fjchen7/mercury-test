POST {{mercury_testnet_host}}
{
  "id": 42,
  "jsonrpc": "2.0",
  "method": "get_spent_transaction",
  "params": [{
    "outpoint": {
      "tx_hash": "0xa4aee7ae950d7fb74271816566827832d50ebf3fc04234927314fd332c4cd112",
      "index": "0x2"
    },
    "structure_type": "Native"
  }]
}


HTTP/1.1 200
```{"jsonrpc":"2.0","result":{"type":"TransactionWithRichStatus","value":{"transaction":{"version":"0x0","cell_deps":[{"out_point":{"tx_hash":"0x7f96858be0a9d584b4a9ea190e0420835156a6010a5fde15ffcdc9d9c721ccab","index":"0x0"},"dep_type":"dep_group"},{"out_point":{"tx_hash":"0xf8de3bb47d055cdf460d93a2a6e1b05f7432f9777c8c474abf4eec1d4aee5d37","index":"0x0"},"dep_type":"dep_group"},{"out_point":{"tx_hash":"0xec26b0f85ed839ece5f11c4c4e837ec359f5adc4420410f6453b1f6b60fb96a6","index":"0x0"},"dep_type":"dep_group"},{"out_point":{"tx_hash":"0xe12877ebd2c3c364dc46c5c992bcfaf4fee33fa13eebdf82c591fc9825aab769","index":"0x0"},"dep_type":"code"}],"header_deps":[],"inputs":[{"since":"0x0","previous_output":{"tx_hash":"0xa4aee7ae950d7fb74271816566827832d50ebf3fc04234927314fd332c4cd112","index":"0x1"}},{"since":"0x0","previous_output":{"tx_hash":"0xa4aee7ae950d7fb74271816566827832d50ebf3fc04234927314fd332c4cd112","index":"0x2"}}],"outputs":[{"capacity":"0x3c5986200","lock":{"code_hash":"0x60d5f39efce409c587cb9ea359cefdead650ca128f0bd9cb3855348f98c70d5b","hash_type":"type","args":"0x3651364c341811146d74d14fea6fed86c2f4ab35c772f4d885ca6285d87d82b8edc1643df9f3ce63"},"type":{"code_hash":"0xc5e5dcf215925f7ef4dfaf5f4b4f105bc321c02776d6e7d52a1db3fcd9d011a4","hash_type":"type","args":"0x7c7f0ee1d582c385342367792946cff3767fe02f26fd7f07dba23ae3c65b28bc"}},{"capacity":"0x34e62ce00","lock":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0xa3b8598e1d53e6c5e89e8acb6b4c34d3adb13f2b"},"type":{"code_hash":"0xc5e5dcf215925f7ef4dfaf5f4b4f105bc321c02776d6e7d52a1db3fcd9d011a4","hash_type":"type","args":"0x7c7f0ee1d582c385342367792946cff3767fe02f26fd7f07dba23ae3c65b28bc"}},{"capacity":"0x7efc5e6418","lock":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0xa3b8598e1d53e6c5e89e8acb6b4c34d3adb13f2b"},"type":null}],"outputs_data":["0x64000000000000000000000000000000","0x8c187a10f35a00000000000000000000","0x"],"witnesses":["0x550000001000000055000000550000004100000039b729fac7bda7d0a66500951f73465087ca1e009eeb899f578c962ad7a0abeb230b13a9997319265fbb2b816227e32ebf764327fd7624f81ceb20289506dd2601","0x"],"hash":"0x3020e90284f2d4f51b79471245939d043e958c60ba5dc95b212f8cbd8b875bd1"},"tx_status":{"status":"committed","block_hash":"0x54af022e0fdebed3690ee6d6e2368f3c976c6ad6cfcdbfa307869fd57c2d5129","reason":null,"timestamp":1630586562999}}},"id":42}```
