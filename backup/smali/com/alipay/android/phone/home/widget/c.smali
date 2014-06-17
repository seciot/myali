.class final Lcom/alipay/android/phone/home/widget/c;
.super Ljava/lang/Object;
.source "ActiveTopBoardContainer.java"

# interfaces
.implements Lcom/alipay/android/phone/home/util/SyncAnimatingHelper$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/c;->b:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    iput-object p2, p0, Lcom/alipay/android/phone/home/widget/c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/c;->b:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    #getter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$500(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/c;->b:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    #getter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->m:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$500(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_0
    return-void
.end method
