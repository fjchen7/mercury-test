POST {{mercury_testnet_host}}
{
  "jsonrpc": "2.0",
  "method": "get_balance",
  "params": [
    {
      "item": {
        "type": "Address",
        "value": "ckt1qyqg88ccqm59ksxp85788pnqg4rkejdgcg2qxcu2qf"
      },
      "asset_infos": [
        {
          "asset_type": "CKB",
          "udt_hash": "0x0000000000000000000000000000000000000000000000000000000000000000"
        }
      ],
      "tip_block_number": 3482945
    }
  ],
  "id": 100
}

HTTP/1.1 200
[Asserts]
jsonpath "$.result.balances[0].ownership.type" == "Address"
jsonpath "$.result.balances[0].ownership.value" == "ckt1qyqg88ccqm59ksxp85788pnqg4rkejdgcg2qxcu2qf"
jsonpath "$.result.balances[0].asset_info.asset_type" == "CKB"
jsonpath "$.result.balances[0].asset_info.udt_hash" == "0x0000000000000000000000000000000000000000000000000000000000000000"
jsonpath "$.result.tip_block_number" == 3482945
