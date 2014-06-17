.class final Lcom/alipay/android/phone/home/ui/k;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/k;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/k;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/ui/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/k;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/ui/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/n;->changeState(I)V

    .line 329
    :cond_0
    return-void
.end method
