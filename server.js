var exs = require("express");
var app = exs();
app.use(exs.static(__dirname));
var port = process.env.PORT || 3000;
app.listen(process.env.PORT || 3000);
console.log(`start server on port ${port}`);
