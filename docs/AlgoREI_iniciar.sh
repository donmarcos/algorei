Account Address = KH7CRVIGKU3H3TCD47KVAXXRIO5A6W6PTMN7JKPXHSVSIAVFBSBP3PR2JM
Account Mnemonic = iron famous sorry armed swear seed arrange slight razor shop frequent mango talent isolate sad key gas select wish horror price evoke extend ability rubber




sh sandbox.sh goal asset create 
--creator LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE 
--total 9027 
--unitname algREItk 
--name "Home! USD" 
--asseturl "https://myhome1.xyz" 
--decimals 0




Issued transaction from account LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE, txid ONGXRGK4IQNKIRNZUESHUTOA6YABJYDVE237RWAXBDUSRCZEIPUQ (fee 1000)
Transaction ONGXRGK4IQNKIRNZUESHUTOA6YABJYDVE237RWAXBDUSRCZEIPUQ still pending as of round 52338
Transaction ONGXRGK4IQNKIRNZUESHUTOA6YABJYDVE237RWAXBDUSRCZEIPUQ still pending as of round 52339
Transaction ONGXRGK4IQNKIRNZUESHUTOA6YABJYDVE237RWAXBDUSRCZEIPUQ committed in round 52340
Created asset with asset index 1

sh sandbox.sh goal asset info --creator LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE

λ sh sandbox.sh goal asset info --creator LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE --unitname algREItk
Asset ID:         1
Creator:          LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE
Asset name:       Home! USD

Unit name:        algREItk

Maximum issue:    9027 algREItk
Reserve amount:   9027 algREItk
Issued:           0 algREItk
Decimals:         0
Default frozen:   false
Manager address:  LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE
Reserve address:  LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE
Freeze address:   LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE
Clawback address: LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE

---------------------------------------------------------

λ sh  sandbox.sh goal wallet new test1Wallet
Please choose a password for wallet 'test1Wallet':
Please confirm the password:
Creating wallet...
Created wallet 'test1Wallet'
Your new wallet has a backup phrase that can be used for recovery.
Keeping this backup phrase safe is extremely important.
Would you like to see it now? (Y/n): Y
Your backup phrase is printed below.
Keep this information safe -- never share it with anyone!

rebuild fix tone emerge weasel myth tragic buyer rely deposit praise upon identify wrist tank exhaust dwarf intact spy witness divorce dawn panda absorb intact

Wallet: test1Wallet
ID:     ae6a1d2fe1259f253690108a06da1c31


λ sh  sandbox.sh goal account new test1Account -w test1Wallet
Please enter the password for wallet 'test1Wallet':
Created new account with address 4WD6XC6BS54WUHGADQ2655PL42UIV7EWKBVIR7F57N34MLEUR5YFVAH424


password for both Wallet and Account is test1


Funding newly created account on test1 Wallet 

sh  sandbox.sh goal clerk send -a 125000 -f LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE -t 4WD6XC6BS54WUHGADQ2655PL42UIV7EWKBVIR7F57N34MLEUR5YFVAH424
Sent 125000 MicroAlgos from account LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE to address 4WD6XC6BS54WUHGADQ2655PL42UIV7EWKBVIR7F57N34MLEUR5YFVAH424, transaction ID: XW6TWAN47GEWMGRT33J7LAN755UOC5S6MR2IDDLOQRAWIRFBYY3A. Fee set to 1000
Transaction XW6TWAN47GEWMGRT33J7LAN755UOC5S6MR2IDDLOQRAWIRFBYY3A still pending as of round 82854
Transaction XW6TWAN47GEWMGRT33J7LAN755UOC5S6MR2IDDLOQRAWIRFBYY3A still pending as of round 82855
Transaction XW6TWAN47GEWMGRT33J7LAN755UOC5S6MR2IDDLOQRAWIRFBYY3A committed in round 82856


#### new Wallet 1 


#### new Wallet 2 









