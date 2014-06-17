.class public abstract Lcom/alipay/mobile/h5container/service/H5Service;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isPaymentUrlLoading(Ljava/lang/String;)Z
.end method

.method public abstract startH5App(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startPaymentByUrl(Ljava/lang/String;Lcom/alipay/mobile/h5container/extenal/PaymentProcessorListener;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/h5container/extenal/IWebPayBuriedPoint;)Z
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/extenal/IWebPayBuriedPoint;)V
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;Lcom/alipay/mobile/h5container/extenal/IWebPayBuriedPoint;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/h5container/extenal/IWebPayBuriedPoint;",
            ")V"
        }
    .end annotation
.end method
