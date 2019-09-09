module jupiterhelloprovider {
    requires helloapi;

    provides com.billyjf.hello.api.HelloProvider
        with com.billyjf.hello.providers.Jupiter;
}