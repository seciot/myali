.class public Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;
.super Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/HttpManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->close()V

    return-void
.end method
