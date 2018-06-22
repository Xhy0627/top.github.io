import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class Scratch {
    public static void main(String[] args) {
        String targetFilePathI = "多对象（5图片）（jpg+png+gif+tiff+bmp）###b4ef468966a04891e8cd937a70c71be0.zip";
        String targetFilePathO = "";
        System.out.println("in:" + targetFilePathI);
        try {
            String tmpStr = "<"+System.currentTimeMillis()+">";
            targetFilePathO = URLDecoder.decode(targetFilePathI.replaceAll("\\+", tmpStr), "utf-8").replaceAll(tmpStr, "\\+");
        } catch (Exception e1) {
            e1.printStackTrace();
            try {
                targetFilePathO = new String(targetFilePathI.getBytes(), "utf-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        System.out.println("out:" + targetFilePathO);
        System.out.println(targetFilePathI.equals(targetFilePathO));
    }
}