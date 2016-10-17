#!/bin/sh
#
# Exemplo de uma chamada na API da base em bashscript
#
# @author Joubert <me+github@redrat.com.br>
#

API_URL='http://subdominio.dominio.exemplo/api/v1/marcas/'
TOKEN='52f86f8c-ba2b-4089-bf14-a0a1e69581e2'

curl -H "X-Auth-Token: $TOKEN" $API_URL
