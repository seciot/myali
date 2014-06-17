.class public Lcom/alipay/android/app/display/uielement/UINavigator;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->t:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UINavigator;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/android/app/R$id;->aE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alipay/android/app/R$id;->aF:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UINavigator;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "middle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/UINavigator;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()[I
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final p()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->ae:I

    return v0
.end method
