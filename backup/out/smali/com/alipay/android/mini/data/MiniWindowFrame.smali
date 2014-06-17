.class public Lcom/alipay/android/mini/data/MiniWindowFrame;
.super Lcom/alipay/android/lib/plusin/ui/WindowData;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oneTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/android/mini/data/MiniWindowFrame;->a(Z)V

    const-string/jumbo v3, "page"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->b:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "dialog"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x7

    iput v1, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    iput-boolean v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->b:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "toast"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/alipay/android/mini/event/ActionType;->s:Lcom/alipay/android/mini/event/ActionType;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/alipay/android/mini/event/ActionType;->D:Lcom/alipay/android/mini/event/ActionType;

    if-ne v3, v4, :cond_4

    :cond_3
    const/16 v3, 0xa

    iput v3, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "confirm"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fullscreen"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->b:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/data/MiniStatus;->a(Ljava/lang/String;)Lcom/alipay/android/mini/data/MiniStatus;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/mini/data/MiniStatus;->h:Lcom/alipay/android/mini/data/MiniStatus;

    if-ne v0, v1, :cond_7

    const/16 v0, -0xa

    iput v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->b:Z

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/data/MiniWindowFrame;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
