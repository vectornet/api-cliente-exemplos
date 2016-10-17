//
// Exemplo de uma chamada na API da base em Go
// Usage: go build consultar.go && ./consultar
//
// Author Joubert <me+github@redrat.com.br>
//

package main

import (
    "fmt"
    "io/ioutil"
    "net/http"
)

func main() {
    var api_url = "http://subdominio.dominio.exemplo/api/v1/marcas/"
    var token = "52f86f8c-ba2b-4089-bf14-a0a1e69581e2"

    client := &http.Client{}
    req, _ := http.NewRequest("GET", api_url, nil)
    req.Header.Set("X-Auth-Token", token)
    resp, _ := client.Do(req)
    defer resp.Body.Close()
    body, _ := ioutil.ReadAll(resp.Body)

    fmt.Printf("Body: %v\n", string(body))
}
