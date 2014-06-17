.class public Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field b:Landroid/app/ActivityManager;

.field c:Landroid/content/BroadcastReceiver;

.field d:Lcom/alipay/mobile/framework/AlipayApplication;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    const-string/jumbo v0, "ScreenOnOffService"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Lcom/alipay/mobile/framework/AlipayApplication;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Lcom/alipay/mobile/framework/AlipayApplication;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->b:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v0, Lcom/alipay/mobile/security/gesture/service/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/service/d;-><init>(Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Lcom/alipay/mobile/framework/AlipayApplication;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/AlipayApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->destroy(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Lcom/alipay/mobile/framework/AlipayApplication;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
