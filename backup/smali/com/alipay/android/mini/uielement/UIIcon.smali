.class public Lcom/alipay/android/mini/uielement/UIIcon;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    return-void
.end method

.method private E()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIIcon;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIIcon;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    new-instance v2, Lcom/alipay/android/mini/uielement/m;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/uielement/m;-><init>(Lcom/alipay/android/mini/uielement/UIIcon;Landroid/widget/ImageView;)V

    invoke-static {v1, v2}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIIcon;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->j()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UIIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->E()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UIIcon;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->E()V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIIcon;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/android/mini/uielement/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/l;-><init>(Lcom/alipay/android/mini/uielement/UIIcon;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIIcon;->e:Landroid/view/View;

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

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIIcon;->e:Landroid/view/View;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->s()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final t()I
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIIcon;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/android/app/R$layout;->m:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/alipay/android/app/R$layout;->l:I

    goto :goto_0
.end method
