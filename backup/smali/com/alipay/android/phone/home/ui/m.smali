.class final Lcom/alipay/android/phone/home/ui/m;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibleChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 369
    const-string/jumbo v1, "wif"

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->k(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->k(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "20000002"

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->k(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/ui/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/n;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/ui/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/n;->a()V

    .line 379
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/ui/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/n;->changeState(I)V

    .line 387
    :cond_1
    return-void
.end method
