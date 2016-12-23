
var a = 5;
var b = 100;
var c = b;

module.exports.levelFromExp = function(exp) {
    if (exp > 0) return Math.floor(a * Math.log((1 / b) * (exp + c))) + 1;
    else return 1;
};

module.exports.expForLevel = function(level) {
    if (level > 1) return Math.ceil(Math.exp((level - 1) / a) * b - c);
    else return 0;
};


