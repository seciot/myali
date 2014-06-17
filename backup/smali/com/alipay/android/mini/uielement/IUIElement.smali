.class public abstract Lcom/alipay/android/mini/uielement/IUIElement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected d:Lcom/alipay/android/mini/event/OnElementEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->a:Z

    return-void
.end method


# virtual methods
.method public final A()Lcom/alipay/android/mini/event/OnElementEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->a:Z

    return v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Lcom/alipay/android/mini/event/OnElementEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/IUIElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/alipay/android/mini/event/ActionType;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    new-instance v1, Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-direct {v1, p2}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V
    .locals 3

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lcom/alipay/android/mini/uielement/IUIElement;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/ActionType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cell"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->a:Z

    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->b:Ljava/lang/String;

    const-string/jumbo v0, "vertical-align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/IUIElement;->c:Ljava/lang/String;

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lorg/json/JSONObject;
.end method
