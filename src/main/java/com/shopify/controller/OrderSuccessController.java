package com.shopify.controller;

import com.shopify.model.User;
import com.shopify.repo.UserRepository;
import com.shopify.service.DeliveryService;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order-success")
public class OrderSuccessController {

    @Autowired
    private DeliveryService deliveryService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping()
    public String getPage(ModelMap modelMap) {
        UserDetails userDetails = AppUtil.getCurrentUser();
        User user = userRepository.findByUsername(userDetails.getUsername());
        modelMap.addAttribute("items", deliveryService.getDeliveryDtoByUser(user.getId()));
        return "order-success";
    }

}
