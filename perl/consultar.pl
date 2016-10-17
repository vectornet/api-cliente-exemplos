#!/usr/bin/perl
#
# Exemplo de uma chamada na API da base em perl
#
# Author Joubert <me+github@redrat.com.br>
#

use LWP;

my $api_url = 'http://subdominio.dominio.exemplo/api/v1/marcas/';
my $token = '52f86f8c-ba2b-4089-bf14-a0a1e69581e2';

my $browser = LWP::UserAgent->new;
my $response = $browser->get($api_url,
  'X-Auth-Token' => $token,
);

print $response->content;
