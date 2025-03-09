package model;

// @author xu4nvi3t
import java.util.ArrayList;
import java.util.List;

public class WishList {

    private List<Item> items;

    public WishList() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Products product) {
        if (product == null) {
            return;
        }
        if (!items.contains(product)) { 
            Item item = new Item(product, 0, 0);
            items.add(item);
        }
    }

    public void removeItem(int id) {
        Item item = getItemById(id);
        if (item != null) {
            items.remove(item);
        }
    }

    private Products getProductById(int id, List<Products> list) {
        if (list == null) {
            return null;
        }
        for (Products p : list) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }

    public WishList(String txt, List<Products> listProduct) {
        items = new ArrayList<>();
        if (txt == null || txt.isEmpty() || listProduct == null) {
            return;
        }
        try {
            String[] s = txt.split("/");
            for (String i : s) {
                int id = Integer.parseInt(i); // Ma productId
                Products p = getProductById(id, listProduct);
                if (p != null) {
                } else {
                    System.out.println("Product not found for ID: " + id);
                }
            }
        } catch (Exception e) {
            System.out.println("Unexpected error in cart initialization: " + e.getMessage());
        }
    }

}
