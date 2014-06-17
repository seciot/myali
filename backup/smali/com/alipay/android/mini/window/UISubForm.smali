.class public Lcom/alipay/android/mini/window/UISubForm;
.super Lcom/alipay/android/mini/window/UIFormWindow;


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:Lcom/alipay/android/mini/uielement/BaseElement;

.field private z:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/UIFormWindow;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/UISubForm;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/UISubForm;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/UISubForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/UIFormWindow;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/UISubForm;)Lcom/alipay/android/mini/uielement/BaseElement;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->C:Lcom/alipay/android/mini/uielement/BaseElement;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/UISubForm;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/window/UISubForm;)Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->z:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/UISubForm;->B:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/UISubForm;->B:Z

    iput-object p1, p0, Lcom/alipay/android/mini/window/UISubForm;->z:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->z:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/mini/window/ag;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/mini/window/ag;-><init>(Lcom/alipay/android/mini/window/UISubForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/animation/DisplayRotate3D;->a(Landroid/view/View;Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/mini/uielement/BaseElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/UISubForm;->C:Lcom/alipay/android/mini/uielement/BaseElement;

    return-void
.end method

.method protected final a(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 1

    check-cast p2, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/UISubForm;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->j:Lcom/alipay/android/mini/event/ActionType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UISubForm;->dispose()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/UIFormWindow;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final b(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/android/mini/window/UIFormWindow;->dispose()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/UISubForm;->B:Z

    iget-object v0, p0, Lcom/alipay/android/mini/window/UISubForm;->z:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/mini/window/ah;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/mini/window/ah;-><init>(Lcom/alipay/android/mini/window/UISubForm;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/animation/DisplayRotate3D;->b(Landroid/view/View;Lcom/alipay/android/mini/widget/animation/DisplayRotate3D$onCompletedListener;)V

    return-void
.end method

.method protected final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
