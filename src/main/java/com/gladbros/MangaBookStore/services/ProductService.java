package com.gladbros.MangaBookStore.services;

import com.gladbros.MangaBookStore.models.Product;
import com.gladbros.MangaBookStore.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

//private String title;
//private String type;
//private String year;
//private String status;
//private int chapters;
//private String description;
//private int price;
//private String author;


@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List <Product> listProducts(String title){
        if (title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProducts(Product product, Mul){
        log.info("Saving new {}", product);
        productRepository.save(product);
    }

    public void removeProducts(Long id){
        productRepository.deleteById(id);
    }

    public Product getProductByID(long id) {
        return productRepository.findById(id).orElse(null);
    }
}
