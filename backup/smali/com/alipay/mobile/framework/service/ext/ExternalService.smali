.class public abstract Lcom/alipay/mobile/framework/service/ext/ExternalService;
.super Lcom/alipay/mobile/framework/service/MicroService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/MicroService;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final destroy(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->onDestroy(Landroid/os/Bundle;)V

    return-void
.end method
