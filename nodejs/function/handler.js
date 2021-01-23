
module.exports = {
  handle: (req, res) => {
    // TODO: handle the req
    res.send('' + req.body.input)
    return ""
  },

  init: () => {
    return
  }

} 