package com.example.demo.models;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.entities.Product;


public class ProductModel {

	private List<Product> products;

	public ProductModel() {
		this.products = new ArrayList<Product>();
		this.products.add(new Product("p01", "1 day", "1.jpg", 35));
		this.products.add(new Product("p02", "1 hour", "2.jpg", 8));
		this.products.add(new Product("p03", "3 hours", "3.jpg", 15));
		this.products.add(new Product("p04", "6 hours", "3.jpg", 22));
		this.products.add(new Product("p05", "12 hours", "1.jpg", 28));
	}

	public List<Product> findAll() {
		return this.products;
	}

	public Product find(String id) {
		for (Product product : this.products) {
			if (product.getId().equalsIgnoreCase(id)) {
				return product;
			}
		}
		return null;
	}
}

