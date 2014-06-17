.class public Lcom/alipay/android/mini/window/UIFormDialog;
.super Lcom/alipay/android/mini/window/AbstractUIForm;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/List;

.field private z:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/alipay/android/mini/window/UIFormDialog;->h:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->n()Lcom/alipay/android/lib/plusin/ui/WindowData;

    move-result-object v0

    instance-of v3, v0, Lcom/alipay/android/mini/data/MiniWindowFrame;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/alipay/android/mini/data/MiniWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/mini/data/MiniWindowFrame;->b()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->g:Lcom/alipay/android/mini/window/IFormShower;

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormDialog;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/UIFormDialog;->A:Ljava/lang/String;

    iget-object v3, v4, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    :goto_2
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v0

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "dialog"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormDialog;->A:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormDialog;->r:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->g:Lcom/alipay/android/mini/window/IFormShower;

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormDialog;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/UIFormDialog;->A:Ljava/lang/String;

    iget-object v3, v4, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/mini/event/ActionType;

    iget-object v5, v6, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/mini/event/ActionType;

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->g:Lcom/alipay/android/mini/window/IFormShower;

    iget-object v1, p0, Lcom/alipay/android/mini/window/UIFormDialog;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/UIFormDialog;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v2, "onload"

    invoke-static {v0, v2}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    invoke-virtual {p0, p0, v2}, Lcom/alipay/android/mini/window/UIFormDialog;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)Z

    :cond_0
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/UIFormDialog;->z:Ljava/lang/String;

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/UIFormDialog;->A:Ljava/lang/String;

    const-string/jumbo v2, "button"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    invoke-direct {v5, p0}, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;-><init>(Lcom/alipay/android/mini/window/UIFormDialog;)V

    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    const-string/jumbo v6, "action"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "action"

    invoke-static {v4, v6}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/mini/event/ActionType;

    :cond_1
    const-string/jumbo v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "confirm"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "cancel"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/alipay/android/mini/window/UIFormDialog;->B:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected final a(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
