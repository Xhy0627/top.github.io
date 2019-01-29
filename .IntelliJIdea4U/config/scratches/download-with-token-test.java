import org.apache.commons.io.FileUtils;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.http.HttpStatus;

import java.io.File;
import java.io.IOException;

class Scratch {

    public static void main(String[] args) {
        System.out.println(downloadFile("http://172.16.7.118:11999/html/index.html"
                , "eyJhbGciOiJIUzUxMiJ9.eyJhdWQiOiJFRDIzODhCMkRDRTk0OTlGOUI5Q0Y4NTU4RDkzODg0OSIsImp0aSI6IjBlNDE5ZWY5OWRkZTRiOGZhODAyZWQyZWU1MzgzNTNhIiwiZXhwIjoxNTMzOTc1ODAwLCJpYXQiOjE1MzM5NzQwMDB9.bJVD-_LnKLsEm-iknT6V2F1A2sA-pal_oCvtfpWfalCt4wppcjXFPv545FHGdmHSR_KNH0ZvtL_fNi-X_cp_ag"
                , "/tmp/index.html"));
    }

    private static boolean downloadFile(String url, String token, String path) {
        boolean isSucceed = false;

        CloseableHttpClient httpClient = HttpClients.createDefault();

        HttpHead httpHead = new HttpHead(url);
        httpHead.addHeader("login_token", token);
        HttpGet httpGet = new HttpGet(url);
        httpGet.addHeader("login_token", token);

        try {
            if (HttpStatus.OK.value() == httpClient.execute(httpHead).getStatusLine().getStatusCode()) {
                CloseableHttpResponse httpResponse = httpClient.execute(httpGet);
                HttpEntity imageEntity = httpResponse.getEntity();

                if (imageEntity != null) {
                    FileUtils.copyInputStreamToFile(imageEntity.getContent(), new File(path));
                    isSucceed = true;
                }
            }
        } catch (IOException e) {
            isSucceed = false;
        }

        httpHead.releaseConnection();
        httpGet.releaseConnection();
        return isSucceed;
    }
}