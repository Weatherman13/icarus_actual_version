package com.borz0y13.icarus4.service.controller;

import com.borz0y13.icarus4.entity.pojo.filters.Filter;
import com.borz0y13.icarus4.utils.Utils;
import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
@Slf4j
@Component
public class HttpRequestCreatorService {
    private final String urlToSearchForScene = "https://m2m.cr.usgs.gov/api/api/json/stable/scene-search";

    @Autowired
    private Utils utils;

    public HttpResponse<String> sceneSearch(Filter filter) throws IOException,
            URISyntaxException, InterruptedException {


        HttpRequest request = HttpRequest.newBuilder()
                .uri(new URI(urlToSearchForScene))
                .POST(HttpRequest.BodyPublishers.ofString(filter.serialize()))
                .header("Content-Type", "application/json")
                .header("X-Auth-Token", utils.tokenGenerator().getToken())
                .build();

        HttpResponse<String> response = HttpClient.newBuilder()
                .followRedirects(HttpClient.Redirect.ALWAYS)
                .build()
                .send(request, HttpResponse.BodyHandlers.ofString());

        log.debug("Scene search completed, code:" + String.valueOf(response.statusCode()));


        return response;
    }


}
