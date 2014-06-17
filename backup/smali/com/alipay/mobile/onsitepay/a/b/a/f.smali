.class public final Lcom/alipay/mobile/onsitepay/a/b/a/f;
.super Ljava/lang/Object;
.source "OnsitePayRegisterLongLinkServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/a/b/d;


# instance fields
.field a:Landroid/support/v4/content/LocalBroadcastManager;

.field b:Landroid/content/BroadcastReceiver;

.field c:Lcom/alipay/mobile/onsitepay/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 30
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->b:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->c:Lcom/alipay/mobile/onsitepay/a/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->a:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/AlipayApplication;Ljava/lang/String;Lcom/alipay/mobile/onsitepay/a/b/a;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->c:Lcom/alipay/mobile/onsitepay/a/b/a;

    .line 38
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "com.alipay.longlink.TRANSFER_10000013"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/alipay/mobile/onsitepay/a/b/a/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/a/b/a/g;-><init>(Lcom/alipay/mobile/onsitepay/a/b/a/f;)V

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->b:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/a/b/a/f;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 59
    return-void
.end method
