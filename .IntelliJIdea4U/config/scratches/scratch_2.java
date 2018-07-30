import org.springframework.util.AntPathMatcher;

class Scratch {
    public static void main(String[] args) {
        System.out.println(new AntPathMatcher().matchStart("/file/**", "/file/index.html"));
        System.out.println(new AntPathMatcher().matchStart("/file/**", "/file/"));
        System.out.println(new AntPathMatcher().matchStart("/file/**", "/file"));
    }
}