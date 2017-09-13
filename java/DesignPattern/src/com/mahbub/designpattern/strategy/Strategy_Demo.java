package com.mahbub.designpattern.strategy;

import java.util.ArrayList;
import java.util.List;

/**
 * Define a family of algorithms, encapsulate each one, and make theminterchangeable.
 * Strategy lets the algorithm vary independently fromclients that use it.
 *
 * AKA: Policy Pattern
 */

interface PostAnalyzeStrategy {
    void analyze(List<Post> posts);
}

class SadnessAnalyzeStrategy implements PostAnalyzeStrategy {
    @Override
    public void analyze(List<Post> posts) {
        int postCount = posts.size();
        int totalSadCount = 0;
        for(Post post : posts) totalSadCount += post.sadCount;
        System.out.println("Sadness Value: " + (double)totalSadCount / postCount);
    }
}

class LaughAnalyzeStrategy implements PostAnalyzeStrategy {
    @Override
    public void analyze(List<Post> posts) {
        int postCount = posts.size();
        int totalLaughCount = 0;
        for(Post post : posts) totalLaughCount += post.laughCount;
        System.out.println("Laugh Value: " + (double)totalLaughCount / postCount);
    }
}

class Post {
    String text;
    int likeCount;
    int sadCount;
    int laughCount;

    public Post(String text, int likeCount, int sadCount, int laughCount) {
        this.text = text;
        this.likeCount = likeCount;
        this.sadCount = sadCount;
        this.laughCount = laughCount;
    }
}

class User {
    List<Post> posts = new ArrayList<>();

    public User() {
        posts = new ArrayList<>();
    }

    public void addPost(Post post) {
        posts.add(post);
    }

    public void analyzePosts(PostAnalyzeStrategy strategy) {
        strategy.analyze(posts);
    }
}

public class Strategy_Demo {
    public static void main(String args[]) {
        User user = new User();
        user.addPost(new Post("Post 1", 10, 5, 0));
        user.addPost(new Post("Post 2", 0, 10, 0));
        user.addPost(new Post("Post 3", 15, 0, 0));
        user.addPost(new Post("Post 4", 0, 0, 10));

        user.analyzePosts(new SadnessAnalyzeStrategy());
        user.analyzePosts(new LaughAnalyzeStrategy());
    }
}
