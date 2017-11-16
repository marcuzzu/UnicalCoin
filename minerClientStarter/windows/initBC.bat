@echo "remove old stuff"
@rd /s /q C:\ETHEREUM\GENES
@echo "start configuration node"
@echo "create folder"
@mkdir C:\ETHEREUM\GENES
@echo "folders created"
@echo "copy genes.json into folder"
@SET var=%cd%
@copy "%var%\genesis.json" "C:\ETHEREUM\GENES\"


@echo init NODE
@start "" geth --datadir=C:\ETHEREUM\GENES\NODE1 init C:\ETHEREUM\GENES\NODE1\genesis.json
@echo init NODE DONE

@timeout 5 > NUL

@echo STARTING NODE
@Start "" startNodes.bat

@echo STARTING NODE1 MINER
@start "FULL NODE" geth --datadir=C:\ETHEREUM\GENES --rpc --mine --minerthreads=1  --ipcdisable --bootnodes ""