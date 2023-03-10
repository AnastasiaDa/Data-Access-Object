package com.example.dao.controller;

import com.example.dao.repositiry.DaoRepository;
import com.example.dao.service.DaoService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DaoController {

    private DaoService daoService;

    public DaoController(DaoService daoService) {
        this.daoService = daoService;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam (value = "name",required = false) String name) {
        return daoService.getProductName(name);
    }
}
