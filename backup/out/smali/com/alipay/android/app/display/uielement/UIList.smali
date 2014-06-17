.class public Lcom/alipay/android/app/display/uielement/UIList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IUIElement;
.implements Lcom/alipay/android/app/display/uielement/IUIElementContainer;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONArray;

.field private e:Lcom/alipay/android/app/display/uielement/ElementStyle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$layout;->N:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v3}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->v:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "component"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->c:Ljava/lang/String;

    const-string/jumbo v0, "ds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->d:Lorg/json/JSONArray;

    :cond_0
    return-void
.end method

.method public final b()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final h()[I
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    return-object v0
.end method
