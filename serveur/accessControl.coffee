module.exports =
  logged: (req, res, next) ->
    if req.session.logged is true
      next()
    else
      res.sendStatus 401

  rf: (req, res, next) ->
    if req.session.user.roles.indexOf("rf") isnt -1 and req.session.loginRf is true
      next()
    else
      res.sendStatus 401