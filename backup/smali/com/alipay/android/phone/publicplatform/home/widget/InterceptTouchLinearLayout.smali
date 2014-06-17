.class public Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "InterceptTouchLinearLayout.java"


# instance fields
.field private a:Lcom/alipay/android/phone/publicplatform/home/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getOnInterceptTouchListener()Lcom/alipay/android/phone/publicplatform/home/widget/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->a:Lcom/alipay/android/phone/publicplatform/home/widget/a;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->a:Lcom/alipay/android/phone/publicplatform/home/widget/a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->a:Lcom/alipay/android/phone/publicplatform/home/widget/a;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/publicplatform/home/widget/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnInterceptTouchListener(Lcom/alipay/android/phone/publicplatform/home/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/widget/InterceptTouchLinearLayout;->a:Lcom/alipay/android/phone/publicplatform/home/widget/a;

    .line 35
    return-void
.end method
