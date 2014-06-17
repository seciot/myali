.class public Lcom/alipay/android/mini/util/KeyboardUtil;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/inputmethodservice/KeyboardView;


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/KeyboardUtil;->a:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0, v0}, Landroid/inputmethodservice/KeyboardView;->measure(II)V

    iget-object v0, p0, Lcom/alipay/android/mini/util/KeyboardUtil;->a:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/util/KeyboardUtil;->a:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/KeyboardUtil;->a:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    :cond_1
    return-void
.end method
