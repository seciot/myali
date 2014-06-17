.class public Lcom/alipay/android/app/display/uielement/UIRadioGroup;
.super Lcom/alipay/android/app/display/uielement/BaseElement;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/RadioGroup;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UIRadioGroup;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/bs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->h:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/bs;-><init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->i:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    check-cast p2, Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/android/app/R$id;->al:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/app/R$id;->ak:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/bn;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/bn;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/alipay/android/app/display/uielement/bp;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/bp;-><init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/alipay/android/app/display/uielement/bq;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/bq;-><init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a:Ljava/lang/String;

    const-string/jumbo v0, "radios"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "radios"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/display/uielement/bn;

    invoke-direct {v3}, Lcom/alipay/android/app/display/uielement/bn;-><init>()V

    invoke-virtual {v3, v2, p2}, Lcom/alipay/android/app/display/uielement/bn;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method protected final b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/bt;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/bt;-><init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->c(Landroid/os/Handler;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/bn;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/bn;->c(Landroid/os/Handler;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    :cond_0
    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b:Ljava/util/List;

    return-void
.end method

.method public final h()[I
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getId()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 3

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->s()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final p()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->ac:I

    return v0
.end method
