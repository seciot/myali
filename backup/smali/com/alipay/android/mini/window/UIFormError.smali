.class public Lcom/alipay/android/mini/window/UIFormError;
.super Lcom/alipay/android/mini/window/AbstractUIForm;


# instance fields
.field private A:Ljava/lang/String;

.field private z:Lcom/alipay/android/app/data/BizUiData;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    iput-object p1, p0, Lcom/alipay/android/mini/window/UIFormError;->z:Lcom/alipay/android/app/data/BizUiData;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormError;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UIFormError;->A:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UIFormError;->A:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 1

    check-cast p2, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/UIFormError;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormError;->z:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbstractUIForm;->dispose()V

    return-void
.end method

.method protected final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final n()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
