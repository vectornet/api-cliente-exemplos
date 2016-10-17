/*
  Exemplo de uma chamada na API da base em C++
  Usage: g++ consultar.c -o file -lcurl && ./file

  Authors: Joubert <me+github@redrat.com.br>
*/

#include <iostream>
#include <string>
#include <curl/curl.h>

std::string api_url = "http://subdominio.dominio.exemplo/api/v1/marcas/";
std::string token = "52f86f8c-ba2b-4089-bf14-a0a1e69581e2";

static std::string readBuffer;

static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

int main(void)
{
  CURL *curl;
  CURLcode res;

  curl = curl_easy_init();
  if(curl) {
    struct curl_slist *chunk = NULL;
    char *response = NULL;

    std::string auth_token = "X-Auth-Token: " + token;
    chunk = curl_slist_append(chunk, auth_token.c_str());
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, chunk);
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 0L);
    curl_easy_setopt(curl, CURLOPT_URL, api_url.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
    curl_easy_perform(curl);
    curl_easy_cleanup(curl);
    curl_slist_free_all(chunk);

    std::cout << readBuffer << std::endl;
  }

  return 0;
}
