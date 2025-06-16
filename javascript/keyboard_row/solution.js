var findWords = function(words) {
    // const top = /q|w|e|r|t|y|u|i|o|p/;
    // const mid = /a|s|d|f|g|h|j|k|l/;
    // const low = /z|x|c|v|b|n|m/;
    const top = new RegExp("q|w|e|r|t|y|u|i|o|p", "i");
    const mid = new RegExp("a|s|d|f|g|h|j|k|l", "i");
    const low = new RegExp("z|x|c|v|b|n|m", "i");
    let singleRowWords = [];
    words.forEach(val => {
        let rows = 0
        if (top.test(val)) rows++
        if (mid.test(val)) rows++
        if (low.test(val)) rows++
        if (rows === 1) singleRowWords.push(val);
    })
    return singleRowWords
};

console.log(findWords(["abdfs","cccd","a","qwwewm"]))
console.log(findWords(["Hello","Alaska","Dad","Peace"]))