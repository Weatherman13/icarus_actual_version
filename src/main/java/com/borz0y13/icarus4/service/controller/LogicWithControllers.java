package com.borz0y13.icarus4.service.controller;

import com.borz0y13.icarus4.entity.pojo.Scene;
import com.borz0y13.icarus4.entity.pojo.filters.Filter;
import com.borz0y13.icarus4.service.dao.SatelliteServiceImpl;
import com.borz0y13.icarus4.utils.Utils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LogicWithControllers {
    @Autowired
    SatelliteServiceImpl satelliteServiceRepository;

    @Autowired
    Utils utils;

    @Autowired
    HttpRequestCreator requestCreator;

    @Autowired
    ObjectMapper mapper;


    public List<Scene> returnTheListOfScenesByFilter(Filter filter) throws IOException, InterruptedException,
            URISyntaxException {

        var response = requestCreator.sendRequestToSearchForScene(filter);
        var obj2 = new JSONObject(response.body());

        var results = obj2.getJSONObject("data").getJSONArray("results");

        List<Scene> scenes = new ArrayList<>();

        var datasetId = satelliteServiceRepository.getByName(filter.getDatasetName()).getDatasetId();



        for (int i = 0; i < results.length(); i++) {
            Scene scene = mapper.readValue(results.get(i).toString(), Scene.class);


            if (scene != null) {

                scene.setDatasetId(datasetId);

                scenes.add(scene);

                if (scene.getCloudCover() == null) scene.setCloudCover("does not exist");
            }

        }

        return scenes;

    }
}
