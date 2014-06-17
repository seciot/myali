.class final Lcom/alipay/android/phone/home/ui/l;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/l;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHideFinish()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/l;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    return-void
.end method

.method public final onHideStart()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public final onShowFinish()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public final onShowStart()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/l;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    return-void
.end method
