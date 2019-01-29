import io.jsonwebtoken.Jwts;

class Scratch {
    public static void main(String[] args) {
        System.out.println(Jwts.parser().setSigningKey("0228D2DC86E54CBBB95F121E69C21472")
                .parseClaimsJws("eyJhbGciOiJIUzUxMiJ9.eyJhdWQiOiJ6aGFuZ2p1YW4iLCJ1aWQiOjIsInVuaWZpY2F0aW9uSWQiOiIxNDY3MjcxMjEyODA0ODEwMCIsIm5hbWUiOiLlvKDlqJ8iLCJpc3MiOiI2NUNGNkQ0NkIzRjQ0RTE0QUFDRDM1REQ2NTIyNUQwNiIsInJlcXVlc3RJcCI6IjExNi4yNC42Ni44Iiwic2hvcElkIjoiMTIxNCIsInVzZXJUeXBlIjowLCJleHAiOjE1NDAzOTUwMDEsImlhdCI6MTU0MDM2NjIwMSwiZW1haWwiOiJ6MmNiQHNjdXQuZWR1LmNuIiwianRpIjoiYTU5NGI1NTRhMWRhNDk4OGE3ZDBlYjRiMGFkMDk2NDUifQ.bs-mXEJE6ms87xbi0Ij7Co1juXP2-Ty60fdkJJn0_-GOwGnBOFU4uTJjMNnOQHnzIvh9A2YlanhRkN07ZlD7vg").getBody());
    }
}