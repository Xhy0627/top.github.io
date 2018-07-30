import java.net.URI;
import java.net.URISyntaxException;

class Scratch {
    public static void main(String[] args) {
        try {
            URI uri = new URI("file:///data/pub/");
            System.out.println(uri.getPort());
            System.out.println(uri.getScheme());
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
    }
}