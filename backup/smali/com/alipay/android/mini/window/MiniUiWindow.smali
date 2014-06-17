.class public Lcom/alipay/android/mini/window/MiniUiWindow;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Map;

.field b:Lcom/alipay/android/mini/event/OnElementEventListener;

.field private c:Ljava/util/List;

.field private d:Lcom/alipay/android/mini/uielement/BaseElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/alipay/android/mini/uielement/IUIComponet;Lorg/json/JSONObject;)V
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_0

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "component"

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIComponet;

    const-string/jumbo v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->b:Lcom/alipay/android/mini/event/OnElementEventListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lcom/alipay/android/mini/event/OnElementEventListener;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v4, v3

    :goto_2
    if-ge v4, v9, :cond_5

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v1, "block"

    const-string/jumbo v11, "type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    invoke-static {v10}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/IUIElement;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/mini/uielement/IUIComponet;

    invoke-virtual {v1, v10}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lorg/json/JSONObject;)V

    invoke-direct {p0, v1, v10}, Lcom/alipay/android/mini/window/MiniUiWindow;->a(Lcom/alipay/android/mini/uielement/IUIComponet;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lcom/alipay/android/mini/uielement/IUIElement;)V

    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    invoke-direct {p0, v0, v10, v3}, Lcom/alipay/android/mini/window/MiniUiWindow;->a(Lcom/alipay/android/mini/uielement/IUIComponet;Lorg/json/JSONObject;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lcom/alipay/android/mini/uielement/IUIElement;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v1, v2}, Lcom/alipay/android/mini/window/MiniUiWindow;->a(Lcom/alipay/android/mini/uielement/IUIComponet;Lorg/json/JSONObject;I)V

    goto :goto_5
.end method

.method private a(Lcom/alipay/android/mini/uielement/IUIComponet;Lorg/json/JSONObject;I)V
    .locals 5

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementType;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no such control type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v1}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Lcom/alipay/android/mini/uielement/ElementType;)Lcom/alipay/android/mini/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/BaseElement;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lcom/alipay/android/mini/uielement/IUIComponet;)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->v()V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lcom/alipay/android/mini/uielement/IUIElement;)V

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->d:Lcom/alipay/android/mini/uielement/BaseElement;

    if-nez v2, :cond_3

    sget-object v2, Lcom/alipay/android/mini/uielement/ElementType;->c:Lcom/alipay/android/mini/uielement/ElementType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/mini/uielement/ElementType;->e:Lcom/alipay/android/mini/uielement/ElementType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/mini/uielement/ElementType;->f:Lcom/alipay/android/mini/uielement/ElementType;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->d:Lcom/alipay/android/mini/uielement/BaseElement;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->b:Lcom/alipay/android/mini/event/OnElementEventListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lcom/alipay/android/mini/event/OnElementEventListener;)V

    return-void

    :cond_4
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Lcom/alipay/android/mini/window/MiniUiWindow;

    const-string/jumbo v2, "element type is null,resp data error"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/mini/event/OnElementEventListener;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->b:Lcom/alipay/android/mini/event/OnElementEventListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIComponet;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lcom/alipay/android/mini/event/OnElementEventListener;)V

    invoke-direct {p0, v0, v3}, Lcom/alipay/android/mini/window/MiniUiWindow;->a(Lcom/alipay/android/mini/uielement/IUIComponet;Lorg/json/JSONObject;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIComponet;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/mini/uielement/BaseElement;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniUiWindow;->d:Lcom/alipay/android/mini/uielement/BaseElement;

    return-object v0
.end method
