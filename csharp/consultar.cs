//-------------------------------------------------------
//
// Exemplo de uma chamada na API da base em C#
// Usage: mcs consultar.cs -out:consultar.exe && mono consultar.exe
//
// Author Joubert <me+github@redrat.com.br>
//
//-------------------------------------------------------
using System.IO;
using System.Net;
using System;

class Consultar
{
    static void Main()
    {
        const string APIURL = "http://subdominio.dominio.exemplo/api/v1/marcas/";
        const string TOKEN = "52f86f8c-ba2b-4089-bf14-a0a1e69581e2";

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(APIURL);
        request.Method = "GET";
        request.Headers.Add("X-Auth-Token", TOKEN);

        WebResponse webResponse = request.GetResponse();

        using (Stream webStream = webResponse.GetResponseStream())
        {
            using (StreamReader responseReader = new StreamReader(webStream))
            {
                string response = responseReader.ReadToEnd();
                Console.Out.WriteLine(response);
            }
        }
    }
}
