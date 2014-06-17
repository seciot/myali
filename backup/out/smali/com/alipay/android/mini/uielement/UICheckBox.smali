.class public Lcom/alipay/android/mini/uielement/UICheckBox;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Lcom/alipay/android/mini/widget/CustomCheckbox;

.field private f:Z

.field private g:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->g:Z

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    check-cast p2, Lcom/alipay/android/mini/widget/CustomCheckbox;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->o()F

    move-result v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v4

    sub-float v5, v0, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :goto_0
    mul-float/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/app/R$drawable;->L:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->g:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    new-instance v1, Lcom/alipay/android/mini/uielement/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/j;-><init>(Lcom/alipay/android/mini/uielement/UICheckBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setOnCheckedChangeListener(Lcom/alipay/android/mini/widget/CustomCheckbox$OnCheckedChangeListener;)V

    return-void

    :cond_1
    const/high16 v0, 0x4140

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->g:Z

    const-string/jumbo v0, "must"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->f:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Landroid/view/View;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->f:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->c()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->s()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICheckBox;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UICheckBox;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v2}, Lcom/alipay/android/mini/widget/CustomCheckbox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->h:I

    return v0
.end method
