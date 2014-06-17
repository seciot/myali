.class public Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;
.super Lcom/alipay/mobile/commonui/widget/APScrollView;


# instance fields
.field private canScroll:Z

.field private isClick:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->isClick:Z

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/ay;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/common/ay;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z

    return p1
.end method


# virtual methods
.method public isClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->isClick:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->canScroll:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->setClick(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->setClick(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->isClick:Z

    return-void
.end method
