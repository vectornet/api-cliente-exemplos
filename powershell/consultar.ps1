#
# Exemplo de uma chamada na API da base em powershell
#
# @author Joubert <me+github@redrat.com.br>
#

$api_url = 'http://subdominio.dominio.exemplo/api/v1/marcas/';
$token = '52f86f8c-ba2b-4089-bf14-a0a1e69581e2';

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("X-Auth-Token", $token)

$response = Invoke-RestMethod $api_url -Headers $headers
echo $response
