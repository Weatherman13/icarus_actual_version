package com.borz0y13.icarus4.service.controller;

import com.borz0y13.icarus4.entity.pojo.Scene;
import com.borz0y13.icarus4.entity.pojo.filters.Filter;
import com.borz0y13.icarus4.service.dao.SatelliteServiceImpl;
import com.borz0y13.icarus4.utils.Utils;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class LogicWithControllersService {
    @Autowired
    SatelliteServiceImpl satelliteServiceRepository;

    @Autowired
    Utils utils;

    @Autowired
    HttpRequestCreatorService requestCreator;

    @Autowired
    ObjectMapper mapper;


    public List<Scene> filterOutTheScenes(Filter filter) throws IOException, InterruptedException,
            URISyntaxException {
        List<Scene> scenes = new ArrayList<>();

        var response = requestCreator.sceneSearch(filter);
        var jsonResponse = new JSONObject(response.body());
        var results = jsonResponse.getJSONObject("data").getJSONArray("results");


        var datasetId = satelliteServiceRepository.getByName(filter.getDatasetName()).getDatasetId();

        for (int i = 0; i < results.length(); i++) {
            Scene scene = mapper.readValue(results.get(i).toString(), Scene.class);


            if (scene != null) {

                scene.setDatasetId(datasetId);
                scenes.add(scene);

                if (scene.getCloudCover() == null) scene.setCloudCover("does not exist");
            }

        }

        log.debug("Scene filtering is complete");

        return scenes;

    }
}
