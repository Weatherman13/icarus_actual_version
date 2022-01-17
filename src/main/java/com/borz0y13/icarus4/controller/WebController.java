package com.borz0y13.icarus4.controller;

import com.borz0y13.icarus4.entity.pojo.Scene;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {


    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/")
    public String one(){return "one";}

    @GetMapping("/newscene")
    public String getViewAddScene(Model model){
        model.addAttribute("scene", new Scene());
        return "addScene";

    }

//    @PostMapping("/newscene")
//    public String addNewScene( @Valid Scene scene, BindingResult result){
//        if (result.hasErrors()) {
//            System.out.println("Error");
//            return "addScene";
//        }
//
//        System.out.println(scene);
//        return "redirect:/";
//    }


}
