//
//  Exemplo de uma chamada na API da base na linguagem Swift
//
//  author Joubert <me+github@redrat.com.br>
//

import Foundation

let headers = [
  "x-auth-token": "33db934c-7f44-4dd0-b8e3-955af5e3643a"
]

let request = NSMutableURLRequest(url: NSURL(string: "http://subdominio.dominio.exemplo/api/v1/marcas/")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
  if (error != nil) {
    print(error)
  } else {
    let httpResponse = response as? HTTPURLResponse
    print(httpResponse)
  }
})

dataTask.resume()
