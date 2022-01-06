
# num=0


# 主流程函数
main(num):
    # =============== export blocks and txs
    if [  ]; then

    fi

    # ====== 提取 tx hashes
    if [  ]; then

    fi

    # ================ export_receipts_and_logs
    if [  ]; then

    fi

    # ========= extract contract_addr
    if [  ]; then

    fi


# 使用 etl
# 主要包含 etl 和 geth
etl_geth()


# =============== export blocks and txs
export blocks and txs

nohup python3 ${etl_path} export_blocks_and_transactions --start-block 6015645 --end-block 7200000 \
--provider-uri ${geth_path} \
--blocks-output blocks$num.csv --transactions-output transactions$num.csv > nohup$num.out &
# ====== 提取 tx hashes
nohup python3 ${etl_path} extract_csv_column --input transactions${num}.csv --column hash --output transaction_hashes${num}.txt > tx_hashes${num}.out &


# ================ export_receipts_and_logs
nohup python3 ${etl_path} export_receipts_and_logs --transaction-hashes ../blocks-txs/transaction_hashes$num.txt --provider-uri $geth_path --receipts-output receipts$num.csv --logs-output logs$num.csv > nohup$num.out &

# ========= extract contract_addr