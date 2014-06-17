.class final Lcom/alipay/android/mini/widget/animation/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;


# direct methods
.method constructor <init>(Landroid/view/View;ZLcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/mini/widget/animation/b;->b:Landroid/view/View;

    iput-boolean p2, p0, Lcom/alipay/android/mini/widget/animation/b;->a:Z

    iput-object p3, p0, Lcom/alipay/android/mini/widget/animation/b;->c:Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v1, 0x4000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/animation/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/animation/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/animation/b;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/android/mini/widget/animation/a;

    const/high16 v1, -0x3d4c

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/widget/animation/a;-><init>(FFFFZ)V

    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/animation/a;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/animation/a;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/animation/a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/alipay/android/mini/widget/animation/b;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/android/mini/widget/animation/b;->c:Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/animation/b;->c:Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;

    invoke-interface {v0}, Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/mini/widget/animation/a;

    const/high16 v1, 0x42b4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/widget/animation/a;-><init>(FFFFZ)V

    goto :goto_0
.end method
