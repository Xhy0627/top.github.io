import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class Scratch {
    public static void main(String[] args) {
        String str = "<LinkCodeMode=\"FindGame\"><GameMode>OrderFind</GameMode><MPRCode>100000223900101</MPRCode><ResourceRefs><ResourceRef>a3044c4d1a7208d2fb16070f3c529254</ResourceRef></ResourceRefs><FailureCount>3</FailureCount><Targets><Target>100000223900127</Target><Target>100000223900128</Target><Target>100000223900129</Target></Targets><FoundMedias><ResourceRef>f5ec86730572fafc183936bde7bd871f</ResourceRef></FoundMedias><NotFoundMedias><ResourceRef>243af5f056e53910ac15d90d8844af60</ResourceRef></NotFoundMedias><ReFoundMedias><ResourceRef>08cd6e68ff5b8dc33705b9b8f991f37e</ResourceRef></ReFoundMedias><SubjectMedias><ResourceRef>4865afa637964d2cae0156c550ff4af2</ResourceRef></SubjectMedias></Link>";
        Pattern p = Pattern.compile("<ResourceRef>(.*?)</ResourceRef>");
        Matcher m = p.matcher(str);
        while(m.find()){
            System.out.println(m.group(1));
            System.out.println(m.group(0));
        }
    }
}