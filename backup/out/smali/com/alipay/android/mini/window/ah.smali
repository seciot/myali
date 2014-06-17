.class final Lcom/alipay/android/mini/window/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/mini/window/UISubForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/UISubForm;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/ah;->b:Lcom/alipay/android/mini/window/UISubForm;

    iput-object p2, p0, Lcom/alipay/android/mini/window/ah;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/ah;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/ah;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/mini/window/ah;->b:Lcom/alipay/android/mini/window/UISubForm;

    invoke-static {v1}, Lcom/alipay/android/mini/window/UISubForm;->a(Lcom/alipay/android/mini/window/UISubForm;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/ah;->b:Lcom/alipay/android/mini/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/mini/window/UISubForm;->b(Lcom/alipay/android/mini/window/UISubForm;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/ah;->b:Lcom/alipay/android/mini/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/mini/window/UISubForm;->b(Lcom/alipay/android/mini/window/UISubForm;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->g()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/ah;->b:Lcom/alipay/android/mini/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/mini/window/UISubForm;->c(Lcom/alipay/android/mini/window/UISubForm;)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/mini/window/ah;->b:Lcom/alipay/android/mini/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/mini/window/UISubForm;->d(Lcom/alipay/android/mini/window/UISubForm;)Landroid/app/Activity;

    return-void
.end method
