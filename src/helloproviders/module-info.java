module helloproviders {
    exports com.billyjf.hello.api;

    provides com.billyjf.hello.api.HelloProvider
        with com.billyjf.hello.providers.World;
}