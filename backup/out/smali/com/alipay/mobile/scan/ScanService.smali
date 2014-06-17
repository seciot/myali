.class public abstract Lcom/alipay/mobile/scan/ScanService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract notifyScanResult(ZLandroid/content/Intent;)V
.end method

.method public abstract scan(Lcom/alipay/mobile/scan/ScanRequest;Lcom/alipay/mobile/scan/ScanCallback;)V
.end method
