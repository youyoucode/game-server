var users = {};

module.exports.saveUser = function(uid,frontid) {
    users[uid] = frontid;
};

module.exports.getUser = function(uid) {
    return users[uid];
};