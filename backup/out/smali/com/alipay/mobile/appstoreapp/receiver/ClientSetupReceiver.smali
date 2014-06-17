.class public Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientSetupReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientSetupReceiver"


# instance fields
.field private DelayTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;->DelayTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;->DelayTime:J

    return-wide v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    const-string/jumbo v0, "com.alipay.mobile.client.STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/receiver/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/receiver/a;-><init>(Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/receiver/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/receiver/b;-><init>(Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
