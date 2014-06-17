.class public Lcom/alipay/android/mini/window/UIFormWindow;
.super Lcom/alipay/android/mini/window/AbstractUIForm;


# instance fields
.field private A:Lcom/alipay/android/mini/window/GuideWindow;

.field private z:Lcom/alipay/android/mini/uielement/UIButton;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    invoke-static {}, Lcom/alipay/android/mini/window/GuideWindow;->a()Lcom/alipay/android/mini/window/GuideWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->A:Lcom/alipay/android/mini/window/GuideWindow;

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/UIFormWindow;)Lcom/alipay/android/mini/window/GuideWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->A:Lcom/alipay/android/mini/window/GuideWindow;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 13

    const/16 v12, 0x11

    const/4 v5, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UIFormWindow;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cashier-init"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/app/R$drawable;->M:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/android/app/R$layout;->a:I

    invoke-virtual {v2, v3, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-boolean v2, p0, Lcom/alipay/android/mini/window/UIFormWindow;->e:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/alipay/android/app/R$id;->J:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/alipay/android/mini/window/UIFormWindow;->a(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v4, Lcom/alipay/android/app/R$id;->H:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/UIFormWindow;->c:Z

    if-eqz v4, :cond_7

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    sget v0, Lcom/alipay/android/app/R$color;->a:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->M:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, p1, v0}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/MiniUiWindow;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/mini/uielement/IUIElement;

    instance-of v0, v1, Lcom/alipay/android/mini/uielement/UIButton;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/mini/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIButton;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    check-cast v1, Lcom/alipay/android/mini/uielement/UIButton;

    iput-object v1, p0, Lcom/alipay/android/mini/window/UIFormWindow;->z:Lcom/alipay/android/mini/uielement/UIButton;

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormWindow;->z:Lcom/alipay/android/mini/uielement/UIButton;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->z:Lcom/alipay/android/mini/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIButton;->G()Landroid/view/View;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/window/af;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/af;-><init>(Lcom/alipay/android/mini/window/UIFormWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UIFormWindow;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cashier-card-no"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    invoke-static {v4}, Lcom/alipay/android/mini/util/UIPropUtil;->e(Landroid/app/Activity;)I

    move-result v4

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v5

    iget-object v8, p0, Lcom/alipay/android/mini/window/UIFormWindow;->x:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormWindow;->x:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    iget-object v9, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    invoke-static {v9}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v9

    invoke-static {v4, v8, v9}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v4

    :cond_8
    iget-object v8, p0, Lcom/alipay/android/mini/window/UIFormWindow;->y:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v5, p0, Lcom/alipay/android/mini/window/UIFormWindow;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    iget-object v9, p0, Lcom/alipay/android/mini/window/UIFormWindow;->h:Landroid/app/Activity;

    invoke-static {v9}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v5

    :cond_9
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setGravity(I)V

    sget v0, Lcom/alipay/android/app/R$drawable;->c:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->M:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->e:Z

    if-nez v0, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->w:I

    if-lez v0, :cond_3

    instance-of v0, v1, Lcom/alipay/android/mini/uielement/BaseElement;

    if-eqz v0, :cond_3

    const-string/jumbo v3, "redpoint"

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/mini/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast v1, Lcom/alipay/android/mini/uielement/BaseElement;

    invoke-virtual {v1}, Lcom/alipay/android/mini/uielement/BaseElement;->y()V

    goto/16 :goto_2
.end method

.method protected a(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbstractUIForm;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->d()Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v1, v0, Lcom/alipay/android/mini/uielement/BaseElement;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/android/mini/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SPSafePay"

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UIFormWindow;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alipay/android/mini/util/LogAgent;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbstractUIForm;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UIFormWindow;->t:Lcom/alipay/android/mini/uielement/ElementAction;

    return-void
.end method

.method protected m()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UIFormWindow;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormWindow;->z:Lcom/alipay/android/mini/uielement/UIButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormWindow;->z:Lcom/alipay/android/mini/uielement/UIButton;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/uielement/UIButton;->a(Z)V

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final n()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbstractUIForm;->b()Ljava/util/List;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/JsonUtils;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method
