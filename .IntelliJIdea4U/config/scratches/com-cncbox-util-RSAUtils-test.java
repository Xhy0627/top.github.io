import com.cncbox.utils.encrypt.RSAUtils;

class Scratch {
    public static void main(String[] args) {
        String srcStr = "asfdasfasfd";
        String sign = null;
        try {
            sign = RSAUtils.encryptByPublicKey(srcStr,
                    "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCfLsmLPMqGuxbA5q6UzxBLwUd02L7G19ibUz0s9ui+1FjgQcHTIBZJOB5jVzB7IMNVwlz1rnLPKHsrUSgBIhSfId3oQRE4aOHiMGJXyDygBY6ehUYbYHoid1mZGkxYBSPGOHkjzeZNhKIjbQF4TzJk5K/bZW8xVx7dBRlTl1vdYwIDAQAB");
            String decStr = RSAUtils.decryptByPrivateKey(sign,
                    "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJ8uyYs8yoa7FsDmrpTPEEvBR3TYvsbX2JtTPSz26L7UWOBBwdMgFkk4HmNXMHsgw1XCXPWucs8oeytRKAEiFJ8h3ehBETho4eIwYlfIPKAFjp6FRhtgeiJ3WZkaTFgFI8Y4eSPN5k2EoiNtAXhPMmTkr9tlbzFXHt0FGVOXW91jAgMBAAECgYANU85+AN33/8v85JNzVA7KOOlxp//5B/NTtdlmXVnJOGAkjnza31HeWXt517/wXyLbmEVOMIfePkZprwbJaYAOXJ8tHRGYKHSDNtWtRHrxAiUMwTeZwguTBEi+xyBtqOnAK5M3UvQmQ/X1QLv+KHnGI4KEAa9Wmt8ZT0EOBwl0gQJBAOZrUQxDqWV+DvvZO5Ulkigaco7L6SRbrNkrnu3wuNcRTUxh+tC+IEtARZDmHdbSU00towTlTntnIB8xp6PgbcECQQCw2uDpMAnPDr2KbxJNHTyQPGBMTqrnMKb8e2BPA3PSJCanKXQwpIz04Zmd5z50dZhSAfx2N6pNPrRX9hM+G9wjAkAU40OcngGcLrpDAGVTVu2R7xvVcAy5fAoGQdsNbNYEwQ/FzdgD1khtKe1kfkfUMorUoz908SiVLTsPONwekfjBAkBZTZ0Ggwhg8tuI/L8sC1haqPIjdhHcfffERHSEUYT5luGhxU/zhBPdT9HnJy6lVgAdYP1foIoxSTl9tTdQRHcrAkByEtZxvHCS7aAxW/JtAsYEfQ91uGrV5m2Ift8fXsRZunQi5qxngggYyCyMv0Oklt5S8IySuJF1LiQTdQwQusDy");
            System.out.println(srcStr);
            System.out.println(sign);
            System.out.println(decStr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}