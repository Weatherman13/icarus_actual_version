package com.borz0y13.icarus4.utils;

import com.borz0y13.icarus4.entity.pojo.TokenForAuthorization;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

@Component
public class Utils {
    private final String jsonAuthorizationUser
            = "{\"username\": \"Weatherman13_0\", \"password\": \"6804082sQ9167462910sQ\"}";
    private final String urlForAuthorization
            = "https://m2m.cr.usgs.gov/api/api/json/stable/login";


    public  TokenForAuthorization tokenGenerator() throws URISyntaxException, IOException, InterruptedException {
//

        HttpRequest request = HttpRequest.newBuilder()
                .uri(new URI(urlForAuthorization))
                .POST(HttpRequest.BodyPublishers.ofString(jsonAuthorizationUser))
                .header("Content-Type", "application/json")
                .build();
        HttpResponse<String> response = HttpClient.newBuilder()
                .followRedirects(HttpClient.Redirect.ALWAYS)
                .build()
                .send(request, HttpResponse.BodyHandlers.ofString());
        TokenForAuthorization token = new ObjectMapper()
                .readerFor(TokenForAuthorization.class)
                .readValue(response.body());


        return token;
    }
}
