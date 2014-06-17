.class public Lcom/alipay/android/mini/uielement/UITextArea;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UITextArea;->e:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->o()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITextArea;->e:Landroid/widget/EditText;

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

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITextArea;->e:Landroid/widget/EditText;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->s()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITextArea;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITextArea;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    sget v0, Lcom/alipay/android/app/R$layout;->z:I

    return v0
.end method
