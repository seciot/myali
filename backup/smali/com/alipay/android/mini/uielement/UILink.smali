.class public Lcom/alipay/android/mini/uielement/UILink;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<u>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->o()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Lcom/alipay/android/mini/uielement/aa;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/aa;-><init>(Lcom/alipay/android/mini/uielement/UILink;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    :cond_0
    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UILink;->e:Landroid/widget/TextView;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->s()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILink;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->q:I

    return v0
.end method
