.class public Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field b:Lcom/alipay/mobile/framework/AlipayApplication;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->b:Lcom/alipay/mobile/framework/AlipayApplication;

    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/service/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/longlinkservice/service/b;-><init>(Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->b:Lcom/alipay/mobile/framework/AlipayApplication;

    iget-object v2, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/AlipayApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->destroy(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->b:Lcom/alipay/mobile/framework/AlipayApplication;

    iget-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
