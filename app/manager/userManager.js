var userSessions = {};

module.exports.saveUser = function(uid,frontid) {
    userSessions[uid] = frontid;
    console.log(userSessions[uid]);
};

module.exports.getUser = function(uid) {
    return userSessions[uid];
};