package com.web.controller;

import com.web.pojo.TbClient;
import com.web.service.InfoService;
import com.web.service.impl.InfoServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author shkstart
 * @create 2019-04-02 11:39
 */
@Controller
public class InfoController {

    @Autowired
    private InfoService infoService;
    @RequestMapping("/info")
    public String findTbClientById(Integer id , Model model){
        TbClient tbclientById = infoService.Service_findTbclientById(1);
        model.addAttribute("user",tbclientById);
        return  "Info";
    }
}
