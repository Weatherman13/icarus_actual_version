package com.borz0y13.icarus4.controller;

import com.borz0y13.icarus4.entity.Satellite;
import com.borz0y13.icarus4.service.SatelliteCollectionServiceImpl;
import com.borz0y13.icarus4.service.SatelliteServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/satellite_creator")
public class SatelliteController {
    @Autowired
    private SatelliteCollectionServiceImpl satelliteCollectionService;
    @Autowired
    private SatelliteServiceImpl satelliteService;

//    todo Returning a sheet with satellites

    @GetMapping("/collection/{idOfCollection}")
    public String returnViewForAll(@PathVariable("idOfCollection") int id, Model model) {
        List<Satellite> satellites = satelliteCollectionService.get(id).getSatelliteList();
        model.addAttribute("collection", satellites);
        return "satelliteViewAll";
    }

//    todo Editing and deleting a satellite

    @GetMapping("/satellite/{id}")
    public String returnViewForEditAndDelete(@PathVariable("id") int id,
                                             Model model) {
        model.addAttribute("satellite", satelliteService.get(id));
        return "satelliteViewEditAndDelete";
    }

    @PostMapping("/satellite/{id}/edit")
    public String edit(@PathVariable("id") int id,
                       @ModelAttribute("satellite") Satellite satellite) {

        satelliteService.update(id, satellite);
        return "redirect:/satellite_creator/all";
    }

    @PostMapping("/satellite/{id}/delete")
    public String delete(@PathVariable("id") int id) {
        satelliteService.delete(id);
        return "redirect:/satellite_creator/all";
    }

    // todo Add new satellite
    @GetMapping("{idOfCollection}/satellite/add")
    public String returnViewForAdd( @PathVariable("idOfCollection") int idOfCollection, Model model) {
        Satellite satellite = new Satellite();
        satellite.setCollection(satelliteCollectionService.get(idOfCollection));
        model.addAttribute("satellite", satellite );
        return "satelliteViewAdd";
    }

    @PostMapping("/satellite/add/{idOfCollection}")
    public String add(@PathVariable("idOfCollection")int id, @ModelAttribute("satellite") Satellite satellite) {
        satellite.setCollection(satelliteCollectionService.get(id));
        satelliteService.save(satellite);
//        todo сделать редирект здорового человека
        return "redirect:/satellite_creator/all";
    }
}


