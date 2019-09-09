package com.billyjf.helloworld;

import com.billyjf.hello.api.HelloProvider;
import java.util.ServiceLoader;

public class Hello {
    public static void main(String... args) {
        Iterable<HelloProvider> providers = ServiceLoader.load(HelloProvider.class);

        System.out.println(String.format("Hello Modular %s!",
                providers.iterator().next().getMessage()));
    }
}