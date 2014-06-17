.class final Lcom/alipay/android/phone/home/widget/b;
.super Ljava/lang/Object;
.source "ActiveTopBoardContainer.java"

# interfaces
.implements Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/b;->c:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    iput-object p2, p0, Lcom/alipay/android/phone/home/widget/b;->a:Landroid/view/View;

    iput p3, p0, Lcom/alipay/android/phone/home/widget/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->c:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    const-string/jumbo v1, "\u6210\u529f\u8f7d\u5165\u9b54\u529b\u573a\uff0c\u4e0a\u6ed1\u53ef\u6536\u7f29"

    #calls: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->a(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$200(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$302(Z)Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->c:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    #getter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->k:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$400(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->c:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    #getter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->k:Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$400(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;->onShowFinish()V

    .line 145
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/alipay/android/phone/home/widget/b;->b:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 150
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/b;->c:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #setter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2, v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$502(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method
