.class final Lcom/alipay/android/app/display/uielement/bj;
.super Lcom/alipay/android/app/display/uielement/r;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->q:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->a:Lcom/alipay/android/app/display/uielement/ElementDimension;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ElementDimension;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f80

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    return-void
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final m()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->K:I

    return v0
.end method
