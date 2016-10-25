/*
 * Exemplo de uma chamada na API da base na linguagem Javascript com node.js
 *
 * author Joubert <me+github@redrat.com.br>
 */

var http = require("http");

var options = {
  "method": "GET",
  "hostname": "subdominio.dominio.exemplo",
  "port": null,
  "path": "/api/v1/marcas/",
  "headers": {
    "x-auth-token": "33db934c-7f44-4dd0-b8e3-955af5e3643a"
  }
};

var req = http.request(options, function (res) {
  var chunks = [];

  res.on("data", function (chunk) {
    chunks.push(chunk);
  });

  res.on("end", function () {
    var body = Buffer.concat(chunks);
    console.log(body.toString());
  });
});

req.end();
