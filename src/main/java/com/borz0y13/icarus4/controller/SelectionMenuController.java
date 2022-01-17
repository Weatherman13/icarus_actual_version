package com.borz0y13.icarus4.controller;

import com.borz0y13.icarus4.entity.SatelliteCollection;
import com.borz0y13.icarus4.service.SatelliteCollectionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/icarus3310")
public class SelectionMenuController {

    @Autowired
    SatelliteCollectionServiceImpl collectionRepository;

    @GetMapping("/satellites-library")
    public String returnViewForLibrary(Model model){
        List<SatelliteCollection> collections = collectionRepository.get();
        model.addAttribute("collections", collections);
        return "collectionViewAllUsers";
    }

    @GetMapping("/satellites-library/{id}")
    public String returnViewForSatellites(@PathVariable("id") int id, Model model){
        model.addAttribute("satellites", collectionRepository.get(id).getSatelliteList());
        model.addAttribute("idOfCollection",id);
        return "satelliteViewAllUsers";
    }




}
