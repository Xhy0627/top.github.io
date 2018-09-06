import java.util.Objects;

class Scratch {
    public static void main(String[] args) {
        System.out.println(String.format("http://%s:%s", "", Objects.toString(null, "80")));
    }
}