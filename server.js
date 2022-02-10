const express = require("express")

const app = express()

app.get("*", (_, res) => {
  res.send("Hello world!")
})

const PORT = process.env.PORT || 5001

app.listen(PORT, () => console.log(`listening on port ${PORT}..`))