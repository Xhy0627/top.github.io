import com.cncbox.utils.feign.FeignBuilder;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;

import java.io.File;
import java.io.IOException;

class Scratch {

    private static final Logger LOGGER = LoggerFactory.getLogger(Scratch.class);

    public static void main(String[] args) {
        System.out.println(downloadFile("https://172.16.5.128:9443/file/bgc/139/105/166/212313e66c5bd3f8e163877924e7d69f.png", "", "/tmp//2018/08/d9qp07z1856aspyhn3k4/yf9bwkuq0q1j8tm2rjht.png"));
    }

    private static boolean downloadFile(String url, String token, String path) {
        LOGGER.info("downloading {} to {}", url, path);
        OkHttpClient unsafeOkHttpClient = FeignBuilder.getUnsafeOkHttpClient();
        try {
            Call call = unsafeOkHttpClient.newCall(new Request.Builder()
                    .url(url)
                    .addHeader("login_token", token)
                    .head()
                    .build());
            Response execute = call.execute();
            if (HttpStatus.OK.value() == execute.code()) {
                call = unsafeOkHttpClient.newCall(new Request.Builder()
                        .url(url)
                        .addHeader("login_token", token)
                        .get()
                        .build());
                execute = call.execute();

                if (execute != null) {
                    FileUtils.copyInputStreamToFile(execute.body().byteStream(), new File(path));
                    return true;
                }
            }
            LOGGER.info("download failed,url:{},head result:{}", url, execute);
        } catch (IOException e) {
            LOGGER.info("download failed,url:{},{}", url, e);
        } finally {
            unsafeOkHttpClient = null;
        }
        return false;
    }
}