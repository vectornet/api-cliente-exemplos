#!/usr/bin/env ruby
#
# Exemplo de uma chamada na API da base em ruby
#
# Author Joubert <me+github@redrat.com.br>
#

require 'net/http'
require 'uri'
require 'json'

api_url = 'http://subdominio.dominio.exemplo/api/v1/marcas/';
token = '52f86f8c-ba2b-4089-bf14-a0a1e69581e2';


url = URI.parse(api_url)
headers = { "X-Auth-Token" => token}
http = Net::HTTP.new(url.host, url.port)
#http.use_ssl = true
data = http.get(url.path, headers)

print data.body
