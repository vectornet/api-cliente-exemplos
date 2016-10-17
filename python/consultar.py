#!/usr/bin/env python

"""
Exemplo de uma chamada na API da base em Python

Authors: Joubert <me+github@redrat.com.br>
"""

import httplib2 as http

api_url = 'http://subdominio.dominio.exemplo/api/v1/marcas/'
token = '52f86f8c-ba2b-4089-bf14-a0a1e69581e2'

method = 'GET'
headers = {"X-Auth-Token": token}
h = http.Http()

response, content = h.request(
    api_url,
    method,
    '',
    headers
)

print content
