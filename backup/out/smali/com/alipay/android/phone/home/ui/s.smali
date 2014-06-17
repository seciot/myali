.class final Lcom/alipay/android/phone/home/ui/s;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/r;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/r;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/r;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/r;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APGridView;->smoothScrollToPosition(I)V

    .line 191
    :cond_0
    return-void
.end method
