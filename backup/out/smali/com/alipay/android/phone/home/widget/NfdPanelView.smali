.class public Lcom/alipay/android/phone/home/widget/NfdPanelView;
.super Landroid/widget/RelativeLayout;
.source "NfdPanelView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/16 v0, 0x52

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->d:I

    .line 23
    iput v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->e:I

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x52

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->d:I

    .line 23
    iput v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->e:I

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->j:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->a:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->b:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/widget/NfdPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->c:Landroid/widget/TextView;

    .line 45
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initGestureData(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->f:Landroid/view/GestureDetector;

    .line 49
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->f:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->d:I

    iget v2, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->e:I

    invoke-static {v0, p1, v1, v2}, Lcom/alipay/android/phone/home/util/ImageLoadHelper;->a(Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/NfdPanelView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
