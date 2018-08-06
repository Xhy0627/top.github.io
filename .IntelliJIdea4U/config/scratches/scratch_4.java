import org.springframework.util.Base64Utils;

import javax.xml.bind.DatatypeConverter;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

class Scratch {

    //openssl
    //genrsa -out rsa_oo_private_key.pem 1024
    //pkcs8 -topk8 -inform PEM -in rsa_oo_private_key.pem -outform PEM -nocrypt
    //rsa -in rsa_oo_private_key.pem -pubout -out rsa_public_key.pem

    private static String applyKeyPair() {
        //生成密钥对
        KeyPairGenerator keyGen = null;
        try {
            keyGen = KeyPairGenerator.getInstance("RSA");
            keyGen.initialize(1024);
            KeyPair key = keyGen.generateKeyPair();
            String pub = DatatypeConverter.printBase64Binary(key.getPublic().getEncoded());
            String pri = DatatypeConverter.printBase64Binary(key.getPrivate().getEncoded());
            return
//                    "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDc9Z0T8TNTWxbf6NtDD/2aGSlg9m41T5PqHQcTYjOyBT4uJ7/vZdLYSSWWcRlZW6WWXQiWKBFuumj5WoUJCJ3i10sfyAouTTmbkujKiJgNHJV8S8DtU1yX2EB2o+NsSa97fNDEVLLtv9bBfuPoqfbKMw0HR1Vo/7WqktYm7jh+9wIDAQAB"
                            pub
                    + "<<>>" +
                            pri
//                    "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBANz1nRPxM1NbFt/o20MP/ZoZKWD2bjVPk+odBxNiM7IFPi4nv+9l0thJJZZxGVlbpZZdCJYoEW66aPlahQkIneLXSx/ICi5NOZuS6MqImA0clXxLwO1TXJfYQHaj42xJr3t80MRUsu2/1sF+4+ip9sozDQdHVWj/taqS1ibuOH73AgMBAAECgYA6KKP5tckOrbEtqnrcAf98ahcMIJENky6Ztp5AKd71go/FUk0g1CpVJ5uvJ4HGlWrWUxKJg25jOMmcqIjPwebcax5i5hBN1V5MObXXiLQy+j9sNWIsQIZFNXmwxn9me5d+7cuyi0c0/HwZRuO3cc1nblpTKxj3ynjBudZ0iHG/cQJBAO7JZUfEgGgp7yKzmDfetVOnuYTzdiImjpQ9umry7O2iObBiktxLY9CmGCfA6l/kApooAipoQ2mnur8aIrr2AmMCQQDs4zsaVEiv10kQz8HvMhcxKb1c1c+4hQ0oXTq4gadLsqH53O25M73DIIxTxJouk3V5HBXrzVDAOSZQGIbusStdAkEA2N7tL4tWnERJvpiijUumID5bDlcYWdfu8tBFeVD8wq7t+jbs70tBcoUHt0NNGp45hs0DeoSLhXAi+eHA3VEFxQJBAOu3bK9VYQLAaa813Jeks1kzXH+NLmZA1wfsRSslsI/tj6nvAgpBBzmsIJaWUom4J7O8k7+RDSJJe+tFjLblSu0CQQDlkqsWuCdmrMWCnjF2GwDSj2NYfgZpbOZU1mnEinv1rIEgsVf1o41pzm8TzSlNzqoTzNHs3Uni3Tmwe+TML+G7"
                    ;
        } catch (NoSuchAlgorithmException e) {
            System.out.println(e);
        }
        return "";
    }

    public static void main(String[] args) {
        String s = applyKeyPair();
        System.out.println(s);
        String sID = "11111";
        String pubKey = s.split("<<>>")[0];
        String sTime = "azsdasdasd";
        String sign = signWhole(sID + sTime, s.split("<<>>")[1]);
        try {
            if (verifyWhole(sID + sTime, sign, pubKey)) {
                System.out.println("success");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    private static String signWhole(String param, String keycode) {
        // 使用私钥加签
        byte[] signature = null;
        try {
            //获取privatekey
            byte[] keyByte = Base64Utils.decodeFromString(keycode);
            KeyFactory keyfactory = KeyFactory.getInstance("RSA");
            PKCS8EncodedKeySpec encoderule = new PKCS8EncodedKeySpec(keyByte);
            PrivateKey privatekey = keyfactory.generatePrivate(encoderule);

            //用私钥给入参加签
            Signature sign = Signature.getInstance("SHA1WithRSA");
            sign.initSign(privatekey);
            sign.update(param.getBytes());

            signature = sign.sign();

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (InvalidKeySpecException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SignatureException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvalidKeyException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //将加签后的入参转成16进制
        String terminal = Base64Utils.encodeToString(signature);
        return terminal;
    }

    private static boolean verifyWhole(String param, String signature, String keycode) {
        try {
            //获取公钥
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            byte[] keyByte = Base64Utils.decodeFromString(keycode);
            X509EncodedKeySpec encodeRule = new X509EncodedKeySpec(keyByte);
            PublicKey publicKey = keyFactory.generatePublic(encodeRule);

            //用获取到的公钥对   入参中未加签参数param 与  入参中的加签之后的参数signature 进行验签
            Signature sign = Signature.getInstance("SHA1WithRSA");
            sign.initVerify(publicKey);
            sign.update(param.getBytes());

            //将16进制码转成字符数组
            byte[] hexByte = Base64Utils.decodeFromString(signature);
            //验证签名
            return sign.verify(hexByte);

        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvalidKeySpecException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SignatureException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvalidKeyException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }

}