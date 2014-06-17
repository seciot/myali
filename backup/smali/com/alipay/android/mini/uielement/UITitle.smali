.class public Lcom/alipay/android/mini/uielement/UITitle;
.super Lcom/alipay/android/mini/uielement/BaseComponent;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseComponent;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITitle;->b:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITitle;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected final f()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->f:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
