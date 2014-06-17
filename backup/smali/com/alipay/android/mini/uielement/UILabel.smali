.class public Lcom/alipay/android/mini/uielement/UILabel;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UILabel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->i:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->i:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->i:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->f:Z

    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->o()F

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->j:[Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->j:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->j:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$color;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/widget/TextView;I)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->k:Ljava/lang/String;

    const-string/jumbo v1, "line-through"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->i:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/y;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/y;-><init>(Lcom/alipay/android/mini/uielement/UILabel;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/UILabel;->g:Z

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->k:Ljava/lang/String;

    const-string/jumbo v1, "underline"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_3
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->f:Z

    const-string/jumbo v0, "text-align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->e:Ljava/lang/String;

    const-string/jumbo v0, "encoded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->f:Z

    const-string/jumbo v0, "shadow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->g:Z

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->i:[Ljava/lang/String;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->j:[Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "text-decoration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->k:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UILabel;->h:Landroid/widget/TextView;

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
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UILabel;->s()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->n:I

    return v0
.end method
