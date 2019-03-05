const SHA256 = require('crypto-js/sha256');

class Block {
    constructor(index, timestamp, data, previousHash) {
        this.index = index;
        this.timestamp = timestamp;
        this.data = data;
        this.previousHash = previousHash;
        this.hash = this._calculateHash();
    }
    _calculateHash() {
        return SHA256(this.index + this.timestamp + JSON.stringify(this.data) + this.previousHash).toString();
    }
}

class BlockChain {
    constructor() {
        this.chain = [this._createGenesisBlock()]
    }
    _createGenesisBlock() {
        return new Block(0, '5-09-19', 'Genesis-block', 0);
    }
    getLatestBlock() {
        return this.chain[this.chain.length - 1];
    }
    addBlock(newBlock) {
        newBlock.previousHash = this.getLatestBlock().hash;
        newBlock.hash = newBlock._calculateHash();
        this.chain.push(newBlock);
    }

    isChainValid() {
        for (let i = 1; i < this.chain.length; i++) {
            let previosuBlock = this.chain[i - 1];
            let CurrentBlock = this.chain[i];
            if (previosuBlock.hash !== CurrentBlock.previousHash) {
                return false;
            }
            if (CurrentBlock.hash !== CurrentBlock._calculateHash()) {
                return false;
            }

        }
        return true;
    }

}

const SC = new BlockChain();
const block1 = new Block(1, '5-6-19', '4');
const block2 = new Block(2, '6-6-19', '4');
SC.addBlock(block1);
SC.addBlock(block2);
console.log(SC);
console.log('is BlockChain Valid?', SC.isChainValid())
SC.chain[2].data = '7';
console.log('is BlockChain Valid?', SC.isChainValid())