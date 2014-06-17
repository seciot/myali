.class public Lcom/alipay/android/mini/window/UIFormToast;
.super Lcom/alipay/android/mini/window/AbstractUIForm;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private z:I


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->C:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 5

    iput-object p1, p0, Lcom/alipay/android/mini/window/UIFormToast;->h:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UIFormToast;->k()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/mini/window/UIFormToast;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)Z

    :cond_0
    const-string/jumbo v0, "hidden"

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormToast;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->z:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v0

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "toast"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormToast;->A:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormToast;->r:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->z:I

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormToast;->A:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/UIFormToast;->B:Ljava/lang/String;

    const-string/jumbo v2, "ajax"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/mini/window/UIFormToast;->C:Z

    const-string/jumbo v2, "blocks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "blocks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "component"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v6, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/UIFormToast;->A:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "image"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->z:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 1

    check-cast p2, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/UIFormToast;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/mini/window/ae;->a:[I

    invoke-virtual {v1}, Lcom/alipay/android/mini/event/ActionType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/UIFormToast;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormToast;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v1}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->g()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbstractUIForm;->dispose()V

    return-void
.end method

.method protected final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->C:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hidden"

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormToast;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormToast;->A:Ljava/lang/String;

    return-object v0
.end method
