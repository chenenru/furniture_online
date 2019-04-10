package com.web.service;

import com.web.pojo.TbProperty;

public interface PropertyService {

    public TbProperty selectPropertyById(Integer id);

    void updateProperty(TbProperty tbProperty);

    void removePropertyById(Integer id);

    void insertProperty(TbProperty tbProperty);


}
