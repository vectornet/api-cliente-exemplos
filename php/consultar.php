<?php
/**
 * Exemplo de uma chamada na API da base na linguagem PHP
 *
 * @author Joubert <me+github@redrat.com.br>
 */

$api_url = 'http://subdominio.dominio.exemplo/api/v1/marcas/';
$token = '52f86f8c-ba2b-4089-bf14-a0a1e69581e2';

$curl = curl_init();

curl_setopt($curl, CURLOPT_URL, $api_url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_HTTPHEADER, array('X-Auth-Token: '.$token));
$result = curl_exec($curl);
curl_close($curl);

header('Content-type: application/json; charset=utf-8');
echo $result;
