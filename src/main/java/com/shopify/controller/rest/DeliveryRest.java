package com.shopify.controller.rest;

import com.shopify.model.Delivery;
import com.shopify.service.DeliveryService;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/delivery")
public class DeliveryRest {

    @Autowired
    private DeliveryService deliveryService;

    @PostMapping("/save")
    public ResponseEntity<Boolean> saveDelivery(@RequestBody Delivery delivery) {
        UserDetails userDetails = AppUtil.getCurrentUser();
        deliveryService.save(delivery, userDetails.getUsername());
        return ResponseEntity.ok().body(true);
    }
}
