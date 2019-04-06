package com.web.controller;

import com.web.pojo.TbClient;
import com.web.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author shkstart
 * @create 2019-04-02 11:39
 */
@Controller
@RequestMapping("/client")
public class InfoController {

    /**
     *
     */
    @Autowired
    private InfoService infoService;

    @RequestMapping("/info")
    public String findTbClientById(Integer id , Model model){
        id=1;//没实现登陆和注册，只能这样了
        TbClient tbclientById = infoService.Service_findTbclientById(id);
        model.addAttribute("user",tbclientById);
        return  "Info";
    }
    @RequestMapping("/edit")
    @ResponseBody
    public TbClient getClientById(Integer id) {
        TbClient tbClient = infoService.Service_findTbclientById(id);
        //System.out.println("11111111111111111111111");
        return tbClient;
    }

    @RequestMapping("/update")
    @ResponseBody
    public String ClientUpdate(TbClient tbClient) {
        infoService.Service_UpdateClient(tbClient);
        //System.out.println(tbClient+"22222222222222222222222222");
        return "Info";
    }
    @RequestMapping("/login")
    public String ToLogin() {
        return "Login";
    }
    /*@RequestMapping("/feedback")
    @ResponseBody
    public String ToFeedback(@RequestBody TbFeedback tbFeedback) {

        return "Feedback";
    }*/
}
