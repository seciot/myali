.class public Lcom/alipay/android/app/display/uielement/UIImage;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->d:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/UIImage;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/app/display/uielement/ba;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/ba;-><init>(Lcom/alipay/android/app/display/uielement/UIImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->b:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/display/uielement/az;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/display/uielement/az;-><init>(Lcom/alipay/android/app/display/uielement/UIImage;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->b:Ljava/lang/String;

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    return-void
.end method

.method public final h()[I
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIImage;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final p()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->W:I

    return v0
.end method
