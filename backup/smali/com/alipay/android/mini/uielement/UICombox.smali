.class public Lcom/alipay/android/mini/uielement/UICombox;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Ljava/util/Map;

.field private f:Landroid/widget/Spinner;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    check-cast p2, Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/android/app/R$id;->v:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->f:Landroid/widget/Spinner;

    sget v0, Lcom/alipay/android/app/R$id;->u:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UICombox;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICombox;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->g:Ljava/util/List;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UICombox;->e:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UICombox;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UICombox;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICombox;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/alipay/android/app/R$layout;->n:I

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UICombox;->g:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UICombox;->f:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICombox;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->f:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UICombox;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICombox;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->h:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->f:Landroid/widget/Spinner;

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

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->f:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UICombox;->h:Ljava/lang/String;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICombox;->s()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UICombox;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UICombox;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UICombox;->f:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    sget v0, Lcom/alipay/android/app/R$layout;->i:I

    return v0
.end method
