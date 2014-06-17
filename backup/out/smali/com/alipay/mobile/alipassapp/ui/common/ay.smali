.class final Lcom/alipay/mobile/alipassapp/ui/common/ay;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ay;->a:Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ay;->a:Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->access$000(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ay;->a:Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->access$002(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ay;->a:Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->access$000(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ay;->a:Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->access$002(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;Z)Z

    goto :goto_0
.end method
