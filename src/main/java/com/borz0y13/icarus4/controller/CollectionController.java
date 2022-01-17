package com.borz0y13.icarus4.controller;

import com.borz0y13.icarus4.entity.SatelliteCollection;
import com.borz0y13.icarus4.service.dao.SatelliteCollectionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/satellite_creator")
public class CollectionController {
    @Autowired
    private SatelliteCollectionServiceImpl satelliteCollectionService;


//    todo Returning a sheet with collections

    @GetMapping("/all")
    public String returnVieForAll(Model model) {

        List<SatelliteCollection> collections = satelliteCollectionService.get();
        model.addAttribute("collections", collections);

        return "collectionViewAll";
    }

//    todo Adding a new collection

    @GetMapping("/collection/add")
    public String returnViewForAdd(Model model){
        SatelliteCollection collection = new SatelliteCollection();
        model.addAttribute("newCollection", collection);
        return "collectionViewAdd";
    }

    @PostMapping("/collection")
    public String add(@ModelAttribute("newCollection") SatelliteCollection collection){
        satelliteCollectionService.save(collection);
        return "redirect:/satellite_creator/all";
    }

//    todo Editing and deleting a collection

    @GetMapping("/collection/{id}/edit")
    public String returnViewForEditDelete(@PathVariable("id") int id, Model model){
        model.addAttribute("collection",satelliteCollectionService.get(id));
        return "collectionViewEditAndDelete";
    }

    @PostMapping("/collection/{id}/delete")
    public String delete(@PathVariable("id") int id){
        satelliteCollectionService.delete(id);
        return "redirect:/satellite_creator/all";
    }

    @PostMapping("/collection/{id}/edit")
    public String edit(@PathVariable("id") int id,
                       @ModelAttribute("collection") SatelliteCollection collection){
        satelliteCollectionService.update(id,collection);
        return "redirect:/satellite_creator/all";
    }



}
