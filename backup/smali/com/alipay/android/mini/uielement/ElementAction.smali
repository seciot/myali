.class public Lcom/alipay/android/mini/uielement/ElementAction;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->g:Z

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->h:Z

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ElementAction;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/mini/event/ActionType;)Lcom/alipay/android/mini/uielement/ElementAction;
    .locals 12

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->j()Z

    move-result v5

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->k()Z

    move-result v6

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->l()Z

    move-result v7

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->a()Lorg/json/JSONObject;

    move-result-object v11

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/ElementAction;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/alipay/android/mini/uielement/ElementAction;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-object v0, v1, Lcom/alipay/android/mini/uielement/ElementAction;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/android/mini/uielement/ElementAction;->c:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/android/mini/uielement/ElementAction;->d:Ljava/lang/String;

    iput-object p4, v1, Lcom/alipay/android/mini/uielement/ElementAction;->e:Ljava/lang/String;

    iput-boolean p5, v1, Lcom/alipay/android/mini/uielement/ElementAction;->f:Z

    iput-boolean p6, v1, Lcom/alipay/android/mini/uielement/ElementAction;->g:Z

    iput-boolean p7, v1, Lcom/alipay/android/mini/uielement/ElementAction;->h:Z

    iput-object p8, v1, Lcom/alipay/android/mini/uielement/ElementAction;->i:Ljava/lang/String;

    iput-object p9, v1, Lcom/alipay/android/mini/uielement/ElementAction;->j:Ljava/lang/String;

    iput-object p10, v1, Lcom/alipay/android/mini/uielement/ElementAction;->k:Ljava/lang/String;

    iput-object p11, v1, Lcom/alipay/android/mini/uielement/ElementAction;->l:Lorg/json/JSONObject;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;
    .locals 13

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_b

    const-string/jumbo v0, "name"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "name"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v11, :cond_a

    const-string/jumbo v1, "host"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "host"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v11, :cond_9

    const-string/jumbo v2, "params"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "params"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v11, :cond_8

    const-string/jumbo v3, "enctype"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "enctype"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v11, :cond_0

    const-string/jumbo v5, "request_param"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v4, "request_param"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v11, :cond_7

    const-string/jumbo v5, "validate"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "validate"

    invoke-virtual {v11, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_4
    if-eqz v11, :cond_6

    const-string/jumbo v6, "https"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "https"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_5
    if-eqz v11, :cond_1

    const-string/jumbo v8, "formSubmit"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v7, "formSubmit"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_1
    const-string/jumbo v8, ""

    if-eqz v11, :cond_2

    const-string/jumbo v9, "namespace"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v8, "namespace"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string/jumbo v9, ""

    if-eqz v11, :cond_3

    const-string/jumbo v10, "apiVersion"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v9, "apiVersion"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_3
    const-string/jumbo v10, ""

    if-eqz v11, :cond_4

    const-string/jumbo v12, "apiName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v10, "apiName"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-static/range {v0 .. v11}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    move-object v3, v4

    goto/16 :goto_3

    :cond_9
    move-object v2, v4

    goto/16 :goto_2

    :cond_a
    move-object v1, v4

    goto/16 :goto_1

    :cond_b
    move-object v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ElementAction;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->f:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->g:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/ElementAction;->h:Z

    return v0
.end method
