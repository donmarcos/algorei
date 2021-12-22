var express = require("express");
const router = express.Router();

const algosdk = require("algosdk");
const indexer_token = "";
const indexer_server = "http://localhost";
const indexer_port = 8980;

const algodToken = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
const algodServer = "http://localhost";
const algodPort = 4001;

// Instantiate the indexer client wrapper
let client = new algosdk.Indexer(indexer_token, indexer_server, indexer_port); 

let algoClient = new algosdk.Algodv2(algodToken, algodServer, algodPort);

// middleware that is specific to this router
router.use(function timeLog(req, res, next) {
  console.log("Assets router: ", Date.now());
  next();
});

// search for asset by name
router.get("/:name", async function (req, res) {
  const assetSearchName = req.params.name;
  console.log("Searching for asset: ", assetSearchName)

  let assetInfo = await client
    .searchForAssets()
    .name(assetSearchName)
    .do();

  const assets = assetInfo.assets.map(asset => ({
      id: asset.index,
      decimals: asset.params.decimals,
      name: asset.params.name,
      total: asset.params.total,
      frozen: asset.params["default-frozen"]
  }))

  res.send(assets);
});


router.post("/create", async function (req, res) {
  // const assetSearchName = req.params.name;
  console.log("Create Asset now");
  console.log(req.body);
  let invar = req.body;
  // console.log("creator:", invar.algoClientcreator) ;
  
  // ------- process -------------
  var acct_mnemonic = "tower clarify bus drop mimic knife join resemble kitchen school half artist profit silly flight hero diagram reform gown curtain holiday eye radar absent scan"; // fill in yours
  var acct = algosdk.mnemonicToSecretKey(acct_mnemonic);
  
  (async () => {
		let params = await algoClient.getTransactionParams().do();
		let note = undefined; 
		let addr = invar.creator;
		let defaultFrozen = false;
		let decimals = parseInt(invar.dec);
		let totalIssuance = parseInt(invar.total);
		let unitName = invar.uname;
		let assetName = invar.name;
		let assetURL = "http://someurl";
		let assetMetadataHash = "01234567890123456789012345678901";
		let manager = invar.creator;
		let reserve = invar.creator;
		let freeze = invar.creator;
		let clawback = invar.creator;
		console.log("total:", totalIssuance);
		let txn = algosdk.makeAssetCreateTxnWithSuggestedParams(addr, note,
			 totalIssuance, decimals, defaultFrozen, manager, reserve, freeze,
			clawback, unitName, assetName, assetURL, assetMetadataHash, params);
		let rawSignedTxn = txn.signTxn(acct.sk);
		let tx = (await algoClient.sendRawTransaction(rawSignedTxn).do());
		
		res.json(JSON.stringify({success: "Ok 200", transid: tx }));
		console.log("Transaction : " + tx.txId);
   })().catch(e => {
    console.log(e);
   });
  
  // --- end of ASA process ------
  
    
  //res.json(JSON.stringify({success: "Ok 200"}));
});

module.exports = router;
