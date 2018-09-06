import com.cncbox.utils.GUIDUtils;
import com.cncbox.utils.JwtsUtils;
import com.cncbox.utils.encrypt.RSAUtils;
import com.cncbox.utils.exception.GlobalException;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;

import java.security.Key;
import java.util.Date;
import java.util.Map;

class Scratch {
    public static void main(String[] args) {
        String token = generateTokenWithAlgo(
                "b5309b3c51b943f5a9b4b952072b9441",
                "ED2388B2DCE9499F9B9CF8558D938849",
                RSAUtils.stringToPrivateKey("MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJ8uyYs8yoa7FsDmrpTPEEvBR3TYvsbX2JtTPSz26L7UWOBBwdMgFkk4HmNXMHsgw1XCXPWucs8oeytRKAEiFJ8h3ehBETho4eIwYlfIPKAFjp6FRhtgeiJ3WZkaTFgFI8Y4eSPN5k2EoiNtAXhPMmTkr9tlbzFXHt0FGVOXW91jAgMBAAECgYANU85+AN33/8v85JNzVA7KOOlxp//5B/NTtdlmXVnJOGAkjnza31HeWXt517/wXyLbmEVOMIfePkZprwbJaYAOXJ8tHRGYKHSDNtWtRHrxAiUMwTeZwguTBEi+xyBtqOnAK5M3UvQmQ/X1QLv+KHnGI4KEAa9Wmt8ZT0EOBwl0gQJBAOZrUQxDqWV+DvvZO5Ulkigaco7L6SRbrNkrnu3wuNcRTUxh+tC+IEtARZDmHdbSU00towTlTntnIB8xp6PgbcECQQCw2uDpMAnPDr2KbxJNHTyQPGBMTqrnMKb8e2BPA3PSJCanKXQwpIz04Zmd5z50dZhSAfx2N6pNPrRX9hM+G9wjAkAU40OcngGcLrpDAGVTVu2R7xvVcAy5fAoGQdsNbNYEwQ/FzdgD1khtKe1kfkfUMorUoz908SiVLTsPONwekfjBAkBZTZ0Ggwhg8tuI/L8sC1haqPIjdhHcfffERHSEUYT5luGhxU/zhBPdT9HnJy6lVgAdYP1foIoxSTl9tTdQRHcrAkByEtZxvHCS7aAxW/JtAsYEfQ91uGrV5m2Ift8fXsRZunQi5qxngggYyCyMv0Oklt5S8IySuJF1LiQTdQwQusDy"),
                new Date(System.currentTimeMillis()),
                5 * 60 * 1000l,
                null,
                SignatureAlgorithm.RS256);
        System.out.println(token);
        Claims claims = JwtsUtils.resolveToken(token);
        System.out.println(claims);
        System.out.println(claims.getIssuedAt().before(new Date(System.currentTimeMillis())));
    }

    public static String generateTokenWithAlgo(String audience, String issuer, Object secret, Date date, long expiration, Map<String, Object> claims, SignatureAlgorithm algorithm) {
        JwtBuilder jwtBuilder = generateBuilderWithAlgo(audience, secret, algorithm);
        if (!StringUtils.isEmpty(issuer)) {
            jwtBuilder.setIssuer(issuer);
        }
        if (MapUtils.isNotEmpty(claims)) {
            jwtBuilder.setClaims(claims);
        }
        return jwtBuilder
                .setExpiration(new Date(date.getTime() + expiration))
                .setIssuedAt(date)
                .compact();
    }

    public static JwtBuilder generateBuilderWithAlgo(String audience, Object secret, SignatureAlgorithm algorithm) {
        if (secret == null || (!(secret instanceof String) && !(secret instanceof byte[]) && !(secret instanceof Key))) {
            throw new GlobalException();
        }
        SignatureAlgorithm signatureAlgorithm = algorithm == null ? SignatureAlgorithm.HS512 : algorithm;
        JwtBuilder jwtBuilder = Jwts.builder()
                .setAudience(audience)
                .setId(GUIDUtils.generateGUID());
        return (secret instanceof String) ? jwtBuilder.signWith(signatureAlgorithm, (String) secret)
                : ((secret instanceof byte[]) ? jwtBuilder.signWith(signatureAlgorithm, (byte[]) secret) : jwtBuilder.signWith(signatureAlgorithm, (Key) secret));
    }
}