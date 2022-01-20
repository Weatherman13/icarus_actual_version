package com.borz0y13.icarus4.controller;

import com.borz0y13.icarus4.entity.pojo.Scene;
import com.borz0y13.icarus4.entity.pojo.filters.Filter;
import com.borz0y13.icarus4.service.controller.LogicWithControllersService;
import com.borz0y13.icarus4.service.dao.SatelliteServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.IOException;
import java.net.URISyntaxException;
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
    LogicWithControllersService logic;

    @GetMapping("/satellites-library/filter/{idOfSatellite}")
    public String returnViewForFilter(@PathVariable("idOfSatellite") int idOfSatellite,
                                      Model model) {

        Filter filter = new Filter();
        filter.setDatasetName(satelliteServiceRepository.get(idOfSatellite).getName());
        model.addAttribute("filter", filter);

        log.debug("The filter page is open; Object: " + satelliteServiceRepository.get(idOfSatellite).getName());




        return "filterView";
    }


    @PostMapping("/satellites-library/filter")
    public String sendFilter(@Valid @ModelAttribute("filter") Filter filter, BindingResult bindingResult,
                             Model model) throws IOException, URISyntaxException, InterruptedException {

        if (bindingResult.hasErrors()) return "filterView";


        List<Scene> scenes = logic.filterOutTheScenes(filter);
        model.addAttribute("scenes", scenes);

        log.debug("The page with the scenes is formed");



        return "sceneViewAll";
    }


}
