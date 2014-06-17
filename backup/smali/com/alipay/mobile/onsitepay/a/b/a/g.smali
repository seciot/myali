.class final Lcom/alipay/mobile/onsitepay/a/b/a/g;
.super Landroid/content/BroadcastReceiver;
.source "OnsitePayRegisterLongLinkServiceImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/a/b/a/f;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/a/b/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/g;->a:Lcom/alipay/mobile/onsitepay/a/b/a/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.longlink.TRANSFER_10000013"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "payLoadData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/g;->a:Lcom/alipay/mobile/onsitepay/a/b/a/f;

    new-instance v2, Lcom/alipay/mobile/onsitepay/a/b/a/h;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/onsitepay/a/b/a/h;-><init>(Lcom/alipay/mobile/onsitepay/a/b/a/f;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    return-void
.end method
