.class final Lcom/alipay/android/phone/home/dialog/b;
.super Ljava/lang/Object;
.source "NfdPanelDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/android/phone/home/dialog/b;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/b;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/b;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;->onShowFinish()V

    .line 105
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/b;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/b;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;->onShowStart()V

    .line 92
    :cond_0
    return-void
.end method
