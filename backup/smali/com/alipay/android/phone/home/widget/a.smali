.class final Lcom/alipay/android/phone/home/widget/a;
.super Ljava/lang/Object;
.source "ActiveTopBoardContainer.java"

# interfaces
.implements Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/a;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/a;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    #getter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->g:Lcom/alipay/android/phone/home/widget/ActiveTopTips;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$000(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Lcom/alipay/android/phone/home/widget/ActiveTopTips;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 108
    invoke-static {}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/a;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    const-string/jumbo v1, "\u4e0b\u62c9\u53ef\u5c55\u5f00"

    #calls: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$200(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$102(Z)Z

    .line 113
    :cond_0
    return-void
.end method
