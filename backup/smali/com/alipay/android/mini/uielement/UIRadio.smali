.class public Lcom/alipay/android/mini/uielement/UIRadio;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Landroid/widget/RadioGroup;

.field private f:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    check-cast p2, Landroid/widget/RadioGroup;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIRadio;->f:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UIRadio;->e:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->o()F

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/RadioButton;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    invoke-virtual {p2, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIRadio;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIRadio;->e:Landroid/widget/RadioGroup;

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

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIRadio;->e:Landroid/widget/RadioGroup;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->s()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIRadio;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UIRadio;->f:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UIRadio;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->s:I

    return v0
.end method
