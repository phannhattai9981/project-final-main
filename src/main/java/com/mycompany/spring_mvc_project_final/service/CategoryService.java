package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.Category;
import com.mycompany.spring_mvc_project_final.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;


    public Object findAll() {
        return categoryRepository.findAll();
    }

    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    public Category findById(int id) {
        return categoryRepository.findById(id);
    }

    public void deleteById(int id) {
        categoryRepository.deleteById(id);
    }



}
