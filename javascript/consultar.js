/*
 * Exemplo de uma chamada na API da base na linguagem Javascript
 *
 * author Joubert <me+github@redrat.com.br>
 */

var api_url = 'http://subdominio.dominio.exemplo/api/v1/marcas/';
var token = '52f86f8c-ba2b-4089-bf14-a0a1e69581e2';

var xhr = new XMLHttpRequest();
xhr.open("GET", api_url, false);
xhr.setRequestHeader("X-Auth-Token", token);
xhr.send();

document.write(xhr.responseText);
