package com.mahbub.designpattern.chainofresponsibility;

import java.util.ArrayList;
import java.util.List;

class Request {
    private double weight;
    private double money;

    public Request(double w, double m)
    {
        this.weight = w;
        this.money = m;
    }
    public double getWeight()
    {
        return this.weight;
    }
    public double getMoney()
    {
        return this.money;
    }
}

abstract class Divison {

    protected List<Divison> nextList = new ArrayList<Divison>();

    public void addNextDivison(Divison d)
    {
        this.nextList.add(d);
    }

    public void handle(Request request)
    {
        for(int i=0; i < nextList.size(); i++) {
            Divison d = nextList.get(i);
            d.handle(request);
        }
    }
    protected abstract void processRequest();
}

class GeneralDivison extends Divison {
    @Override
    public void handle(Request request)
    {
        if(request.getWeight() <= 10 && request.getMoney() <= 10000)
            processRequest();
        else super.handle(request);
    }
    public void processRequest()
    {
        System.out.println("This request is processed by -- General Divison");
    }
}

class ParcelDivisonOne extends Divison {
    @Override
    public void handle(Request request)
    {
        if(request.getWeight() <= 100) processRequest();
        else super.handle(request);
    }
    public void processRequest()
    {
        System.out.println("This request is processed by -- ParcelDivisonOne");
    }
}

class ParcelDivisonTwo extends Divison {
    @Override
    public void handle(Request request)
    {
        if(request.getWeight() > 0) processRequest();
    }
    public void processRequest()
    {
        System.out.println("This request is processed by -- ParcelDivisonTwo");
    }
}

class MoneyDivison extends Divison {
    @Override
    public void handle(Request request)
    {
        if(request.getMoney() > 0) processRequest();
    }
    public void processRequest()
    {
        System.out.println("This request is processed by -- MoneyDivison");
    }
}

public class ChainOfResponsibility_Demo {
    private static Divison createDivison()
    {
        Divison div1 = new GeneralDivison();
        Divison div2 = new ParcelDivisonOne();
        Divison div3 = new ParcelDivisonTwo();
        Divison div4 = new MoneyDivison();
        div2.addNextDivison(div3);

        div1.addNextDivison(div2);
        div1.addNextDivison(div4);

        return div1;
    }

    public static void main(String[] args) {
        Divison div = createDivison();

        div.handle(new Request(101, 10));
     }

}
