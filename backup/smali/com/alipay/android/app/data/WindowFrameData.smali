.class public final Lcom/alipay/android/app/data/WindowFrameData;
.super Lcom/alipay/android/lib/plusin/ui/WindowData;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONArray;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/data/WindowFrameData;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/android/app/data/WindowFrameData;->c:I

    iput-object p5, p0, Lcom/alipay/android/app/data/WindowFrameData;->d:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/alipay/android/app/data/WindowFrameData;->e:Lorg/json/JSONArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->a(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "win"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/data/WindowFrameData;->a(Z)V

    const-string/jumbo v0, "win"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "transparent_dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    goto :goto_0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    return v0
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->e:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->d:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->b:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    return-object v0
.end method
