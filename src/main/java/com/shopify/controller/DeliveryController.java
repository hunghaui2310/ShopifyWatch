package com.shopify.controller;

import com.shopify.dto.DeliveryDto;
import com.shopify.service.DeliveryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/delivery")
public class DeliveryController {

    @Autowired
    private DeliveryService deliveryService;

    @GetMapping
    public String getDelivery() {
        return "delivery";
    }

    @PostMapping()
    public void saveDelivery(DeliveryDto deliveryDto) {
        deliveryService.save(deliveryDto);
    }
}
