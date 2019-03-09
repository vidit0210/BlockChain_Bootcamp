const SHA256 = require('crypto-js/sha256');

class Block {

    constructor(index, date, data, previoushash = "") {
        this.index = index;
        this.date = date;
        this.data = data;
        this.previoushash = previoushash;
        this.hash = this._calcualteHash();
    }
    _calcualteHash() {
        return SHA256(this.index + this.data + this.date + this.previoushash).toString()
    }
}
const Block1 = new Block(1, "7-03-2019", 4);
console.log(Block1.hash);