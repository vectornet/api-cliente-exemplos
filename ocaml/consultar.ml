(*
    Exemplo de uma chamada na API da base na linguagem OCaml
    author Joubert <me+github@redrat.com.br>
*)
open Cohttp_lwt_unix
open Cohttp
open Lwt

let uri = Uri.of_string "http://subdominio.dominio.exemplo/api/v1/marcas/'" in
let headers = Header.add_list (Header.init ()) [
  ("x-auth-token", "33db934c-7f44-4dd0-b8e3-955af5e3643a");
] in

Client.call ~headers `GET uri
>>= fun (res, body_stream) ->
  (* Do stuff with the result *)
