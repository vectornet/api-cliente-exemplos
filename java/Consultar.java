/**
 * Exemplo de uma chamada na API da base na linguagem Java
 *
 * @author Joubert <me+github@redrat.com.br>
 * @see http://unirest.io/java.html
 */

class Consultar {
    public static void main(String[] args) {
        HttpResponse<String> response = Unirest.get("http://subdominio.dominio.exemplo/api/v1/marcas/")
          .header("x-auth-token", "33db934c-7f44-4dd0-b8e3-955af5e3643a")
          .asString();
    }
}
