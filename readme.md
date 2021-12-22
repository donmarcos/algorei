# AlgoREI Fracionando NFT en Real ESTATE 

AlgoREI Fracionando NFT en Real ESTATE  con esta propuesta estamos tratando de "democratizar" aun mas el concepto de NFT/ASA para permitir que todos 
los/las personas sepan accesar, crear tokens y tomar ventaja de esta nueva tecnologia y que no solo sea parte exclusiva de grandes entes corporativos 
fuera del alcance del poder acquisitivo o de entrada de personas que teniendo la iniciativa pero no el capital quieren invertir

El back end estamos usando el sandbox (como en un nodo privado) y cada ASA es creado cada ves que los usuarios lo crean atravez de nuesto AlgoREI dashboard 
y de ahi atravez de nuestras basicas wallets es donde el peer to peer (con transactiones atomicas) comienza en transferir los assets basados en contratos 
directos entre los participantes 

Nuestros dos front ends (dash board en Vue y la wallet basica en ionic) pueden ser activadas localmente y como demostracion estamos usando informacion ya 
hecha de antemano usando un Node server con express que lo usamos como un proxy para communicarnos con el Algorand JavaScript SDK 



## Demo videos: 
[ESPAÑOL](https://www.youtube.com/watc)
## Documentation

Documentacion en [ESPAÑOL](doc/es/README.md)

## Installation (Usando Agorand Sandbox en Windows 10 )

Before installing asegurate que los siguiente este instalado en tu computadora 
node.js, npm, docker, Ionic, Vue.js.

1. Clone this repository
2. Asegurate que tengas Algorand sandbox listo en Docker

4. Install the front end Ionic y Vue
    Para usar el basic wallet 
     
        $ cd algoreiwalletionic

        $ npm install

        $ ionic serve
    
	Para usar el AlgoREI dashboard y crear ASA/NFT's
	
	    $ cd algoreimktvue

        $ npm install

        $ npm run serve
    
	Para comenzar nuestro Node/Express Algo proxy  
	    
		$ cd algoreinodeserver

        $ npm install

        $ npm start
	

Crea las cuentas, wallets y ASA NFTs siguiendo las instrucciones en el doc que sigue
asumo que tu sanbox en docker ya esta inicializada 

    AlgoREI_iniciar.sh

## Other helpful environment setup

* Install sandbox: https://github.com/algorand/sandbox

* Install Visual Studio Code extension: algorand

* Install Algorand JavaScript SDK: https://github.com/algorand/js-algorand-sdk


## Learn Algorand smart contracts

* PyTeal: https://developer.algorand.org/docs/get-started/dapps/pyteal/
* Sample PyTeal DApp: https://github.com/algorand/auction-demo
