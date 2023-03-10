package com.example.dao.service;

import com.example.dao.repositiry.DaoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DaoService {
    DaoRepository daoRepository;

    public DaoService(DaoRepository daoRepository) {
        this.daoRepository = daoRepository;
    }

    public List<String> getProductName(String name) {
        return daoRepository.getProductName(name);
    }
}
