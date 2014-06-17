.class public abstract Lcom/alipay/android/mini/window/AbstractUIForm;
.super Lcom/alipay/android/mini/window/IUIForm;


# static fields
.field protected static b:Z


# instance fields
.field private A:Lorg/json/JSONObject;

.field private B:Ljava/lang/String;

.field private C:Lcom/alipay/android/mini/util/MiniSmsReader;

.field private D:Lcom/alipay/android/mini/window/UISubForm;

.field private E:Z

.field protected a:Lcom/alipay/android/mini/window/MiniUiWindow;

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field private z:Ljava/util/List;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/IUIForm;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    iput-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    iput-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->A:Lorg/json/JSONObject;

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->d:Z

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->e:Z

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->p:Z

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->E:Z

    sput-boolean v0, Lcom/alipay/android/mini/window/AbstractUIForm;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->r:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/AbstractUIForm;Lcom/alipay/android/mini/window/UISubForm;)Lcom/alipay/android/mini/window/UISubForm;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/AbstractUIForm;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->p:Z

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->p:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v1}, Lcom/alipay/android/mini/window/MiniUiWindow;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    instance-of v5, v0, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/UIInput;->a(I)I

    move-result v1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/UIInput;->a(I)I

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v0, v1}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->o:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->o:Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)Z

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    iget-object v0, v0, Lcom/alipay/android/mini/window/MiniUiWindow;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v4, v1, [I

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    iget-object v1, v1, Lcom/alipay/android/mini/window/MiniUiWindow;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/mini/uielement/IUIElement;

    invoke-virtual {v1}, Lcom/alipay/android/mini/uielement/IUIElement;->b()I

    move-result v1

    aput v1, v4, v5

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->r:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v1, v0

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v0

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->r:Ljava/util/Map;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/AbstractUIForm;)Lcom/alipay/android/mini/window/UISubForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->e:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/android/app/R$id;->K:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v0

    :cond_0
    sget v0, Lcom/alipay/android/app/R$id;->D:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Lcom/alipay/android/mini/window/UISubForm;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->A:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->A:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->A:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    if-nez v1, :cond_2

    new-instance v1, Lcom/alipay/android/mini/window/UISubForm;

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/window/UISubForm;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    iput-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "form"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/UISubForm;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/UISubForm;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 5

    iput-object p1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIComponet;

    instance-of v1, v0, Lcom/alipay/android/mini/uielement/BaseComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->g()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/app/R$id;->T:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->c:Z

    invoke-virtual {v0, v2, v1, v4}, Lcom/alipay/android/mini/uielement/IUIComponet;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/mini/uielement/IUIComponet;

    instance-of v2, v1, Lcom/alipay/android/mini/uielement/BaseComponent;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->g()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "bottom"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/app/R$id;->t:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->c:Z

    invoke-virtual {v0, v2, v1, v4}, Lcom/alipay/android/mini/uielement/IUIComponet;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIComponet;

    iget-boolean v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->c:Z

    invoke-virtual {v0, p1, v3, v2}, Lcom/alipay/android/mini/uielement/IUIComponet;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/window/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/b;-><init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected final a(Lcom/alipay/android/mini/event/MiniEventArgs;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v7

    invoke-static {v3}, Lcom/alipay/android/mini/util/ActionUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/MiniUiWindow;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v4, v0, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIInput;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Lcom/alipay/android/mini/event/ActionType;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/mini/window/IFormShower;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/IUIForm;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "guide"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "guide"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->d:Z

    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fullscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->c:Z

    new-instance v1, Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-direct {v1}, Lcom/alipay/android/mini/window/MiniUiWindow;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    const-string/jumbo v1, "disableBack"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->E:Z

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    const-string/jumbo v2, "blocks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alipay/android/mini/window/MiniUiWindow;->a(Lcom/alipay/android/mini/event/OnElementEventListener;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->e:Z

    :cond_1
    new-instance v0, Lcom/alipay/android/mini/window/MiniEventHandleHelper;

    iget-boolean v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->j:Z

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->k:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->E:Z

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->c:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/mini/window/MiniEventHandleHelper;-><init>(ZLjava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->u:Lcom/alipay/android/mini/window/MiniEventHandleHelper;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 1

    check-cast p2, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->j:Lcom/alipay/android/mini/event/ActionType;

    if-ne v2, v3, :cond_2

    const-string/jumbo v3, "SPSafePay"

    iget-object v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/android/mini/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->k:Lcom/alipay/android/mini/event/ActionType;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v0, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    if-ne v2, v3, :cond_3

    const-string/jumbo v3, "SPSafePay"

    iget-object v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/android/mini/util/LogAgent;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->l:Lcom/alipay/android/mini/event/ActionType;

    if-ne v2, v3, :cond_4

    const-string/jumbo v3, "SPSafePay"

    invoke-static {v3}, Lcom/alipay/android/mini/util/LogAgent;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    if-eq v2, v3, :cond_0

    const-string/jumbo v3, "SPSafePay"

    iget-object v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->i:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/android/mini/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/alipay/android/mini/event/ActionType;->l:Lcom/alipay/android/mini/event/ActionType;

    if-ne v2, v3, :cond_6

    sget-boolean v3, Lcom/alipay/android/mini/window/AbstractUIForm;->b:Z

    if-nez v3, :cond_1

    sput-boolean v1, Lcom/alipay/android/mini/window/AbstractUIForm;->b:Z

    invoke-virtual {v2}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    sget v0, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    new-instance v4, Lcom/alipay/android/mini/window/c;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/alipay/android/mini/window/c;-><init>(Lcom/alipay/android/mini/window/AbstractUIForm;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->u:Lcom/alipay/android/mini/window/MiniEventHandleHelper;

    iget-object v3, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    iget-object v4, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->q:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/mini/window/MiniEventHandleHelper;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;Lcom/alipay/android/mini/window/IFormShower;Landroid/app/Activity;Lcom/alipay/android/app/data/BizUiData;Lcom/alipay/android/mini/window/IUIForm;)Z

    move-result v0

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/MiniUiWindow;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->A:Lorg/json/JSONObject;

    return-void
.end method

.method protected final c()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/mini/window/IUIForm;->c()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->C:Lcom/alipay/android/mini/util/MiniSmsReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->C:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->a()Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/event/MiniReadSmsArgs;->reSendSuccess()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/d;-><init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIComponet;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->dispose()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->C:Lcom/alipay/android/mini/util/MiniSmsReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->C:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->c()V

    :cond_1
    iput-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->z:Ljava/util/List;

    iput-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->a:Lcom/alipay/android/mini/window/MiniUiWindow;

    iput-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    iput-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    iput-object v2, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->q:Ljava/lang/Object;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/e;-><init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/f;-><init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/g;-><init>(Lcom/alipay/android/mini/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final h()Lcom/alipay/android/mini/window/UISubForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbstractUIForm;->D:Lcom/alipay/android/mini/window/UISubForm;

    return-object v0
.end method
