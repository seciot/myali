.class public abstract Lcom/alipay/android/mini/window/IUIForm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;
.implements Lcom/alipay/android/mini/event/OnElementEventListener;


# instance fields
.field protected f:Lcom/alipay/android/app/data/BizUiData;

.field protected g:Lcom/alipay/android/mini/window/IFormShower;

.field protected h:Landroid/app/Activity;

.field protected i:Ljava/lang/String;

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:[Ljava/lang/String;

.field protected m:[Ljava/lang/String;

.field protected n:I

.field protected o:Lcom/alipay/android/mini/uielement/ElementAction;

.field protected p:Z

.field protected q:Ljava/lang/Object;

.field r:Ljava/util/Map;

.field protected s:Lorg/json/JSONObject;

.field protected t:Lcom/alipay/android/mini/uielement/ElementAction;

.field protected u:Lcom/alipay/android/mini/window/MiniEventHandleHelper;

.field protected v:Lorg/json/JSONArray;

.field protected w:I

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/IUIForm;->j:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->l:[Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->m:[Ljava/lang/String;

    iput v2, p0, Lcom/alipay/android/mini/window/IUIForm;->n:I

    iput-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->s:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->v:Lorg/json/JSONArray;

    iput v2, p0, Lcom/alipay/android/mini/window/IUIForm;->w:I

    iput-object p1, p0, Lcom/alipay/android/mini/window/IUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/android/app/util/FrameUtils;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private p()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/mini/window/IUIForm;->w:I

    return-void
.end method

.method abstract a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method

.method protected final a(Lcom/alipay/android/mini/event/ActionType;[Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->D:Lcom/alipay/android/mini/event/ActionType;

    if-ne p1, v0, :cond_1

    array-length v0, p2

    if-le v0, v5, :cond_0

    aget-object v0, p2, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p2, v5

    invoke-static {v0, p1}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Ljava/lang/String;Lcom/alipay/android/mini/event/ActionType;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p2

    if-le v0, v3, :cond_3

    aget-object v0, p2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, p2, v3

    invoke-static {v0, p1}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Ljava/lang/String;Lcom/alipay/android/mini/event/ActionType;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v4

    :cond_2
    :goto_1
    array-length v0, p2

    if-le v0, v6, :cond_4

    aget-object v0, p2, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, p2, v6

    invoke-static {v0, p1}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Ljava/lang/String;Lcom/alipay/android/mini/event/ActionType;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v6

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    aget-object v5, p2, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->t:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->t:Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-array v6, v2, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    aput-object v0, v6, v1

    goto :goto_2
.end method

.method protected abstract a(Lcom/alipay/android/mini/event/MiniEventArgs;)V
.end method

.method a(Lcom/alipay/android/mini/window/IFormShower;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/IUIForm;->q:Ljava/lang/Object;

    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    const-string/jumbo v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "menu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "menu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/IUIForm;->v:Lorg/json/JSONArray;

    :cond_0
    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/IUIForm;->x:Ljava/lang/String;

    :cond_1
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/IUIForm;->y:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/IUIForm;->o:Lcom/alipay/android/mini/uielement/ElementAction;

    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/IUIForm;->k:Ljava/lang/String;

    :cond_3
    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/IUIForm;->j:Z

    :goto_0
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->l:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->m:[Ljava/lang/String;

    const-string/jumbo v0, "confirm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->l:[Ljava/lang/String;

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->m:[Ljava/lang/String;

    :cond_6
    return-void

    :cond_7
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/IUIForm;->j:Z

    goto :goto_0
.end method

.method protected final varargs a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    invoke-interface {v0, p1}, Lcom/alipay/android/mini/window/IFormShower;->a([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/alipay/android/mini/event/ActionType;)Z
.end method

.method public final a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 5

    const/4 v1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    new-instance v4, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-direct {v4, v3}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-virtual {p0, p1, v4}, Lcom/alipay/android/mini/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public abstract b()Ljava/util/List;
.end method

.method final b(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/mini/window/IUIForm;->n:I

    return-void
.end method

.method protected final b(Lcom/alipay/android/mini/event/MiniEventArgs;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->h:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/ReadBankCardUtil;->a(Lcom/alipay/android/mini/event/MiniEventArgs;Landroid/app/Activity;)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/IUIForm;->i:Ljava/lang/String;

    return-void
.end method

.method abstract b(Lorg/json/JSONObject;)V
.end method

.method protected b(Lcom/alipay/android/mini/event/ActionType;)Z
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/IUIForm;->n()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/JsonUtils;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/JsonUtils;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/data/ValidatedFrameData;->e()Lcom/alipay/android/app/net/Response;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->k()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/net/Response;->a(Z)V

    invoke-virtual {v3}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "com.alipay.mobilecashier"

    :cond_1
    invoke-virtual {v3}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "4.0.0"

    :cond_2
    invoke-virtual {v3}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v0, "com.alipay.quickpay"

    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/net/Envelope;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/data/InteractionData;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/data/InteractionData;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->f()Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->q:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/android/mini/uielement/UIButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->q:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/mini/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIButton;->F()V

    :cond_0
    return-void
.end method

.method protected final c(Lcom/alipay/android/mini/event/ActionType;)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->h:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v2, v1, v0

    const-string/jumbo v0, "\u670d\u52a1\u534f\u8bae"

    array-length v3, v1

    if-le v3, v4, :cond_1

    aget-object v0, v1, v4

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/android/mini/window/IUIForm;->h:Landroid/app/Activity;

    const-class v4, Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    invoke-interface {v0, v1}, Lcom/alipay/android/mini/window/IFormShower;->a_(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/mini/window/IUIForm;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    invoke-interface {v1, v0}, Lcom/alipay/android/mini/window/IFormShower;->a_(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/IUIForm;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    instance-of v2, v0, Lcom/alipay/android/mini/uielement/BaseElement;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/mini/uielement/BaseElement;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract d()V
.end method

.method protected final d(Lcom/alipay/android/mini/event/ActionType;)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/android/mini/window/IUIForm;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/mini/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v0, 0x0

    const-string/jumbo v3, "loginpwd"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "20000015"

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alipays://platformapi/startApp?appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&sourceId=trustedMsp&logonId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&fromWhich="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/mini/window/IUIForm;->g:Lcom/alipay/android/mini/window/IFormShower;

    invoke-interface {v1, v0}, Lcom/alipay/android/mini/window/IFormShower;->a_(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v3, "paypwd"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "20000013"

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "simplepwd"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "20000060"

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method protected abstract h()Lcom/alipay/android/mini/window/UISubForm;
.end method

.method final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/IUIForm;->j:Z

    return v0
.end method

.method protected final k()Lcom/alipay/android/mini/uielement/ElementAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->o:Lcom/alipay/android/mini/uielement/ElementAction;

    return-object v0
.end method

.method final l()Lcom/alipay/android/mini/event/OnElementEventListener;
    .locals 0

    return-object p0
.end method

.method protected abstract m()Z
.end method

.method protected abstract n()Lorg/json/JSONObject;
.end method

.method protected final o()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/mini/window/IUIForm;->f:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->d()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "minipay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "protocol"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    sget-object v2, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/IUIForm;->n()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method
