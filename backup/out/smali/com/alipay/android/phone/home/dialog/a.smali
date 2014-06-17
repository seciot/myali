.class final Lcom/alipay/android/phone/home/dialog/a;
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
    .line 61
    iput-object p1, p0, Lcom/alipay/android/phone/home/dialog/a;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/a;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/a;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;->onHideFinish()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/a;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->dismiss()V

    .line 80
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/a;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/a;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;->onHideStart()V

    .line 68
    :cond_0
    return-void
.end method
