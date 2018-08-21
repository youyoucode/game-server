var userSessions = {};

module.exports.init = function() {
    userSessions = {};
};

module.exports.saveUser = function(uid,frontid) {
    userSessions[uid] = frontid;
};

module.exports.getUser = function(uid) {
    return userSessions[uid];
};