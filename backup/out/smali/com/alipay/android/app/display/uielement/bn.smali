.class final Lcom/alipay/android/app/display/uielement/bn;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/widget/RadioButton;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/bn;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bn;->c:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->h:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 1

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/bn;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/display/uielement/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/bn;->a:Z

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/bn;->c:Landroid/widget/RadioButton;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "checked"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/bn;->a:Z

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/display/uielement/bo;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/bo;-><init>(Lcom/alipay/android/app/display/uielement/bn;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/bn;->b:I

    return v0
.end method

.method protected final p()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->ab:I

    return v0
.end method
