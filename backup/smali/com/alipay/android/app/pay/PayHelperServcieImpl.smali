.class public Lcom/alipay/android/app/pay/PayHelperServcieImpl;
.super Lcom/alipay/android/app/helper/PayHelperServcie;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/helper/PayHelperServcie;-><init>()V

    return-void
.end method


# virtual methods
.method public createLiveConnection()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelper;->a()V

    return-void
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaySysInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTIDValue()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTIDValue return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    return-object v0
.end method

.method public getVirtualImei()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualImsi()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExistMsp()Z
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public loadLocalTid()Lcom/alipay/android/app/helper/Tid;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    return-object v0
.end method

.method public loadOrCreateTID()Lcom/alipay/android/app/helper/Tid;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "loadOrCreateTID return "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public resetTID()Z
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
