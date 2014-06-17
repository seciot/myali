.class public Lcom/alipay/android/mini/uielement/UIComponent;
.super Lcom/alipay/android/mini/uielement/BaseComponent;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->e:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/mini/uielement/k;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/k;-><init>(Lcom/alipay/android/mini/uielement/UIComponent;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->e:Ljava/lang/String;

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->b:Ljava/lang/String;

    const-string/jumbo v0, "display"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIComponent;->c:Z

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseComponent;->dispose()V

    return-void
.end method

.method protected final f()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->j:I

    return v0
.end method
