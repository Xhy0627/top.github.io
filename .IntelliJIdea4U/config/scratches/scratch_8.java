import com.cncbox.utils.JwtsUtils;

class Scratch {
    public static void main(String[] args) {
        String token = "eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJFRDIzODhCMkRDRTk0OTlGOUI5Q0Y4NTU4RDkzODg0OSIsImp0aSI6IjUxNjE5OGFkNDAwMzRlZjNhMDdkZmJhM2NkNWY3YThkIiwiaXNzIjoiOGEwMmEyOTQ3NjI4NGYwN2FmYzA4ZDIxYTMxYTMxNzIiLCJleHAiOjE1MzQxNTY3ODIsImlhdCI6MTUzNDE1NDE5MH0.DsX-DXDHEwgIsiNKlgh3_99N2y9m8X980jRYVhLzWjWvECSasq5tm1sRPcerAsoDD-vrx1QLBru5MchBiI_dOCoFxFhgWPn90SG5g0KOHw-A8pnuWfhD1Xr4gNMrxw449zXtDbSHWnGkf_LFzmOmmkUPZVrRmU7lpkS9J3B4qtk";
        System.out.println(JwtsUtils.resolveToken(token));
    }
}