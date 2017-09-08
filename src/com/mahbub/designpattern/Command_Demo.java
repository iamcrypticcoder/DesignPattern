package com.mahbub.designpattern;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

/**
 * Encapsulate a request as an object, thereby letting you parameterizeclients with
 * different requests, queue or log requests, and supportundoable operations.
 */


class Book {
    private String currentOwner;

    public Book()
    {
        this.currentOwner = "Library";
    }

    public void buy()
    {
        System.out.println("Buying the book...");
        this.currentOwner = "Me";
    }
    public void sell()
    {
        System.out.println("Selling the book...");
        this.currentOwner = "Library";
    }
    public void giftToFriend(String friendName)
    {
        System.out.println("Sending the book as gift to " + friendName);
        this.currentOwner = friendName;
    }

    public String getCurrentOwner()
    {
        return this.currentOwner;
    }
}

interface Command {
    void execute();
}

class BuyCommand implements Command {
    private Book book;

    public BuyCommand(Book book) {
        this.book = book;
    }

    @Override
    public void execute() {
        book.buy();
    }
}

class SellCommand implements Command {
    private Book book;

    public SellCommand(Book book) {
        this.book = book;
    }

    @Override
    public void execute() {
        book.sell();
    }
}

class GiftFriendCommand implements Command {
    private Book book;
    private String friendName;

    public GiftFriendCommand(Book book, String friendName) {
        this.book = book;
        this.friendName = friendName;
    }

    @Override
    public void execute() {
        book.giftToFriend(friendName);
    }
}

class CommandExecutor {
    private Queue<Command> nextCommands;
    private Stack<Command> executedCommands;

    public CommandExecutor()
    {
        this.nextCommands = new LinkedList<>();
        this.executedCommands = new Stack<>();
    }

    public void addCommand(Command cmd)
    {
        this.nextCommands.add(cmd);
    }

    public void runCommand()
    {
        while( ! nextCommands.isEmpty() ) {
            Command tempCmd = nextCommands.poll();
            tempCmd.execute();
            this.executedCommands.add(tempCmd);
        }
    }
}

public class Command_Demo {
    public static void main(String args[]) {
        Book book1 = new Book();
        CommandExecutor executor = new CommandExecutor();
        executor.addCommand(new BuyCommand(book1));
        executor.runCommand();
        System.out.println("Current Owner -- " + book1.getCurrentOwner());

        executor.addCommand(new GiftFriendCommand(book1, "Mahbub"));
        executor.addCommand(new SellCommand(book1));
        executor.runCommand();
        System.out.println("Current Owner -- " + book1.getCurrentOwner());
    }
}
