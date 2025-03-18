package model.admin;

// @author xu4nvi3t
public class BestSellingProduct {

    private String name;
    private int totalSold;
    private int sale;
    private int stockQuantity;

    public BestSellingProduct(String name, int totalSold, int sale, int stockQuantity) {
        this.name = name;
        this.totalSold = totalSold;
        this.sale = sale;
        this.stockQuantity = stockQuantity;
    }

    public String getName() {
        return name;
    }

    public int getTotalSold() {
        return totalSold;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTotalSold(int totalSold) {
        this.totalSold = totalSold;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }
    
    
}
