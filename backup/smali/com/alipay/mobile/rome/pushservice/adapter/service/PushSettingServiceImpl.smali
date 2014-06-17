.class public Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;
.super Lcom/alipay/mobile/rome/pushservice/PushSettingService;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/PushSettingService;-><init>()V

    return-void
.end method


# virtual methods
.method public getPushState()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/AliPushInterface;->getPushState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPushState() PushSwitch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/rome/pushservice/adapter/service/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/service/a;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setPushState(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/pushsdk/AliPushInterface;->setPushState(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPushState() PushSwitch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
