.class final Lcom/alipay/android/phone/home/ui/o;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/o;->a:Lcom/alipay/android/phone/home/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 524
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$raw;->a:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 526
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 527
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 528
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/o;->a:Lcom/alipay/android/phone/home/ui/n;

    iget-object v1, v1, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
