package com.borz0y13.icarus4.controller;

import com.borz0y13.icarus4.entity.pojo.Scene;
import com.borz0y13.icarus4.entity.pojo.filters.Filter;
import com.borz0y13.icarus4.service.controller.HttpRequestCreator;
import com.borz0y13.icarus4.service.controller.LogicWithControllers;
import com.borz0y13.icarus4.service.dao.SatelliteServiceImpl;
import com.borz0y13.icarus4.utils.Utils;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;


@Slf4j
@Controller
@RequestMapping("/icarus3310")
public class DownloadFilterController {

    private final String urlSceneSearch = "https://m2m.cr.usgs.gov/api/api/json/stable/scene-search";

    private final String urlDatasetIdSearch = "https://m2m.cr.usgs.gov/api/api/json/stable/dataset-search";

    @Autowired
    SatelliteServiceImpl satelliteServiceRepository;

    @Autowired
    LogicWithControllers logic;

    @GetMapping("/satellites-library/filter/{idOfSatellite}")
    public String returnViewForFilter(@PathVariable("idOfSatellite") int idOfSatellite,
                                      Model model) {
        Filter filter = new Filter();
        filter.setDatasetName(satelliteServiceRepository.get(idOfSatellite).getName());
        model.addAttribute("filter", filter);


        return "filterView";
    }


    @PostMapping("/satellites-library/filter")
    public String sendFilter(@Valid @ModelAttribute("filter") Filter filter, BindingResult bindingResult,
                             Model model) throws IOException, URISyntaxException, InterruptedException {

        if (bindingResult.hasErrors()) return "filterView";

//        log.debug(String.valueOf(response.statusCode()));

        List<Scene> scenes = logic.returnTheListOfScenesByFilter(filter);
        model.addAttribute("scenes", scenes);

        return "sceneViewAll";
    }


}
