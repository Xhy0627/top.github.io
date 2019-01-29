import java.util.Arrays;

class Scratch {
    public static void main(String[] args) {
        String spliter = "\\s*,\\s*";
        System.out.println(Arrays.toString("sfdsdf,sdfsfd".split(spliter)));
        System.out.println(Arrays.toString("sfdsdf ,sdfsfd".split(spliter)));
        System.out.println(Arrays.toString("sfdsdf , sdfsfd".split(spliter)));
        System.out.println(Arrays.toString("sfdsdf ,  sdfsfd".split(spliter)));
    }
}