import com.cncbox.utils.JwtsUtils;
import io.jsonwebtoken.Claims;

class Scratch {
    public static void main(String[] args) {
        String token = "eyJhbGciOiJIUzUxMiJ9.eyJhdWQiOiJFRDIzODhCMkRDRTk0OTlGOUI5Q0Y4NTU4RDkzODg0OSIsImp0aSI6Ijg4MjQ2N2ZmYjlmMzRhYTQ5ZTFhZjQ3YWNlZjBmMzNmIiwiZXhwIjoxNTM3ODU2MTgyLCJpYXQiOjE1Mzc4NTQzODJ9.gN0qKysOaVfzkzzdUyvZ4byJTmuYtphFlhvlv-RGogTe5kcv2-9XcPr0g0vxg1oNTaFb50i1uIFukelc1IEFcw";
        Claims claims = JwtsUtils.resolveToken(token);
        System.out.println("At: " + claims.getIssuedAt());
        System.out.println("Exp: " + claims.getExpiration());
        System.out.println(claims);
    }
}