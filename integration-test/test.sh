#!/usr/bin/env bash

hurl --variable mercury_testnet_host="${{ secrets.MERCURY_TESTNET_HOST }}" --test ./**/*hurl --summary
