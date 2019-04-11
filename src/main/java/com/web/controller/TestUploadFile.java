package com.web.controller;

import com.web.pojo.TbProperty;
import com.web.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @ClassName TestUploadFile
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/10 22:43
 * @Version 1.0
 **/
@Controller
public class TestUploadFile {

    @Autowired
    PropertyService propertyService;

    @RequestMapping(value = "insertProperty" ,method = {RequestMethod.POST,RequestMethod.GET})
    public String insertProperty(Model model, TbProperty tbProperty, MultipartFile picture){

        String newName = UUID.randomUUID().toString();

        String oldName = picture.getOriginalFilename();

        //文件后缀
        String sux = oldName.substring(oldName.lastIndexOf("."),oldName.length());

        System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  " + sux);

        tbProperty.setPrImage(newName + sux);

        File file = new File("相对路径");

        try {
            picture.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }

        propertyService.insertProperty(tbProperty);

        return null;
    }
}
