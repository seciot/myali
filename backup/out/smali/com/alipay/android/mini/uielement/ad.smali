.class final Lcom/alipay/android/mini/uielement/ad;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UISelectButton;


# direct methods
.method private constructor <init>(Lcom/alipay/android/mini/uielement/UISelectButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/mini/uielement/UISelectButton;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/ad;-><init>(Lcom/alipay/android/mini/uielement/UISelectButton;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->c(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->c(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->c(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->c(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;->c(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$layout;->w:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/alipay/android/app/R$id;->L:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/UISelectButton;->o()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p2
.end method
