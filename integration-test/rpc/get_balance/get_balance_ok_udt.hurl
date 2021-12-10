POST {{mercury_testnet_host}}
{
  "jsonrpc": "2.0",
  "method": "get_balance",
  "params": [
    {
      "item": {
        "type": "Address",
        "value": "ckt1qyqw975zuu9svtyxgjuq44lv7mspte0n2tmqa703cd"
      },
      "asset_infos": [
        {
          "asset_type": "UDT",
          "udt_hash": "0x788c79191970e313693351531930b46a708b1ca58f6d414ddc8a8827afb554ff"
        }
      ],
      "tip_block_number": 3482945
    }
  ],
  "id": 100
}
# address: https://explorer.nervos.org/aggron/address/ckt1qyqw975zuu9svtyxgjuq44lv7mspte0n2tmqa703cd
# UDT: https://explorer.nervos.org/aggron/sudt/0x788c79191970e313693351531930b46a708b1ca58f6d414ddc8a8827afb554ff

HTTP/1.1 200
[Asserts]
jsonpath "$.result.balances[0].ownership.type" == "Address"
jsonpath "$.result.balances[0].ownership.value" == "ckt1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsq0zl2pwwzcx9jryfwq26lk0dcq4uhe49as2gh56a"
jsonpath "$.result.balances[0].asset_info.asset_type" == "UDT"
jsonpath "$.result.balances[0].asset_info.udt_hash" == "0x788c79191970e313693351531930b46a708b1ca58f6d414ddc8a8827afb554ff"
jsonpath "$.result.balances[0].free" == "21472917531"
jsonpath "$.result.balances[0].occupied" == "0"
jsonpath "$.result.balances[0].freezed" == "0"
jsonpath "$.result.balances[0].claimable" == "0"
jsonpath "$.result.tip_block_number" == 3482945
