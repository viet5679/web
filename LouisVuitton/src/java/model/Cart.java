package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public int getQuantityById(int id) {
        Item item = getItemById(id);
        return (item != null) ? item.getQuantity() : 0;
    }

    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item i) {
        if (i == null || i.getQuantity() <= 0) {
            return;
        }
        Item existingItem = getItemById(i.getProduct().getId());
        if (existingItem != null) {
            existingItem.setQuantity(existingItem.getQuantity() + i.getQuantity());
        } else {
            items.add(i);
        }
    }

    public void removeItem(int id) {
        Item item = getItemById(id);
        if (item != null) {
            items.remove(item);
        }
    }

    public double getTotalMoney() {
        double total = 0;
        for (Item item : items) {
            double discountPercentage = item.getProduct().getSale() / 100.0;
            double priceAfterDiscount = item.getProduct().getPrice() * (1 - discountPercentage); // Giá sau giảm
            total += priceAfterDiscount * item.getQuantity();
        }
        return total;
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

    public void clearCart() {
        items.clear(); // Xóa toàn bộ sản phẩm trong giỏ hàng
    }

    public Cart(String txt, List<Products> listProduct) {
        items = new ArrayList<>();
        if (txt == null || txt.isEmpty() || listProduct == null) {
            return;
        }
        try {
            String[] s = txt.split("/");
            for (String i : s) {
                String[] n = i.split(":");
                int id = Integer.parseInt(n[0]); // Ma productId
                int quantity = Integer.parseInt(n[1]); // So luong 
                Products p = getProductById(id, listProduct);
                if (p != null) {
                    Item t = new Item(p, quantity, p.getPrice());
                    addItem(t);
                } else {
                }
            }
        } catch (Exception e) {
        }
    }
}
