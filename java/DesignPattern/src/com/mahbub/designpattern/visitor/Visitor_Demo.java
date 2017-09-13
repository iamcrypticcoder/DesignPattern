package com.mahbub.designpattern.visitor;

import java.util.ArrayList;
import java.util.List;

interface LibraryVisitor {
    void visit(Book book);
    void visit(Library library);
}

interface Visitable {
    void accept(LibraryVisitor visitor);
}

class Book implements Visitable {
    private String name;
    private int noPages;
    private double price;

    public Book(String name, int noPages, double price)
    {
        this.name = name;
        this.noPages = noPages;
        this.price = price;
    }

    public void setName(String name)
    {
        this.name = name;
    }
    public void setNoPages(int noPages)
    {
        this.noPages = noPages;
    }
    public void setPrice()
    {
        this.price = price;
    }

    public String getName()
    {
        return this.name;
    }
    public int getNoPages()
    {
        return this.noPages;
    }
    public double getPrice()
    {
        return this.price;
    }

    @Override
    public void accept(LibraryVisitor visitor)
    {
        visitor.visit(this);
    }
}

class Library implements Visitable {
    private String name;
    List<Book> bookList;

    public Library(String name)
    {
        this.name = name;
        this.bookList = new ArrayList<Book>();
    }

    public void addBook(Book book)
    {
        this.bookList.add(book);
    }

    public int countBooks()
    {
        return this.bookList.size();
    }

    @Override
    public void accept(LibraryVisitor visitor)
    {
        for(int i = 0; i < bookList.size(); i++)
            visitor.visit(bookList.get(i));
        visitor.visit(this);
    }
}

class AveragePriceCalcVisitor implements LibraryVisitor {
    private double totalPrice;
    private double avgPrice;

    public AveragePriceCalcVisitor()
    {
        totalPrice = avgPrice = 0.0;
    }

    @Override
    public void visit(Book book)
    {
        this.totalPrice += book.getPrice();
    }

    @Override
    public void visit(Library library)
    {
        this.avgPrice = totalPrice / library.countBooks();
    }

    public double getAvgPrice()
    {
        return this.avgPrice;
    }
}

class AveragePageCalcVisitor implements LibraryVisitor {
    private int totalPage;
    private double avgPage;

    public AveragePageCalcVisitor()
    {
        totalPage = 0;
        avgPage = 0.0;
    }

    @Override
    public void visit(Book book)
    {
        this.totalPage += book.getNoPages();
    }

    @Override
    public void visit(Library library)
    {
        this.avgPage = totalPage / library.countBooks();
    }

    public double getAvgPage()
    {
        return this.avgPage;
    }
}

public class Visitor_Demo {
    public static void main(String args[]) {
        Library library = new Library("KUET Library");
        library.addBook(new Book("Design Pattern", 456, 75.5));
        library.addBook(new Book("Introduction to Java", 666, 110));

        AveragePriceCalcVisitor v1 = new AveragePriceCalcVisitor();
        AveragePageCalcVisitor v2 = new AveragePageCalcVisitor();

        library.accept(v1);
        System.out.println(v1.getAvgPrice());

        library.accept(v2);
        System.out.println(v2.getAvgPage());

        library.addBook(new Book("Introduction to Java", 1025, 225));

        library.accept(v1);
        System.out.println(v1.getAvgPrice());

        library.accept(v2);
        System.out.println(v2.getAvgPage());
    }
}
