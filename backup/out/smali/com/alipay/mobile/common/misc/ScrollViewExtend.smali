.class public Lcom/alipay/mobile/common/misc/ScrollViewExtend;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Z

.field private b:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/misc/ScrollViewExtend$YScrollDetector;-><init>(Lcom/alipay/mobile/common/misc/ScrollViewExtend;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->b:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/misc/ScrollViewExtend;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/misc/ScrollViewExtend;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z

    return p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->a:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ScrollViewExtend;->b:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
