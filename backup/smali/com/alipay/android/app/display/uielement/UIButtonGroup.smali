.class public Lcom/alipay/android/app/display/uielement/UIButtonGroup;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# instance fields
.field private a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->w:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    return-void
.end method

.method public final b(Lorg/json/JSONArray;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v2, [Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    const-string/jumbo v4, "events"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "events"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a(Lorg/json/JSONArray;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->m()Ljava/util/Map;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    new-instance v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    invoke-direct {v5}, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3, v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final h()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    return-object v0
.end method

.method protected final p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
