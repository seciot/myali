.class final Lcom/alipay/android/phone/home/dialog/c;
.super Ljava/lang/Object;
.source "NfdPanelDialog.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/android/phone/home/dialog/c;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/c;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->b(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/home/dialog/c;->a:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    invoke-static {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->b(Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 158
    :cond_0
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
