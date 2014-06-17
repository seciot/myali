.class public Lcom/alipay/android/phone/home/app/ClientStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientStartupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    .line 17
    const-string/jumbo v1, "userId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    const-string/jumbo v2, "userID"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method
