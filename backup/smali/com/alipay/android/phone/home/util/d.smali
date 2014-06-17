.class final Lcom/alipay/android/phone/home/util/d;
.super Landroid/os/Handler;
.source "SyncAnimatingHelper.java"


# instance fields
.field a:I

.field final synthetic b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/home/util/d;->a:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x1001

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;Z)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->c(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->d(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Z

    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->a(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;Z)V

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->b(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->e(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/d;->b:Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;->e(Lcom/alipay/android/phone/home/util/SyncAnimatingHelper;)Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;->a()V

    goto :goto_0
.end method
