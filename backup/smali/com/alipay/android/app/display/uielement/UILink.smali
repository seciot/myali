.class public Lcom/alipay/android/app/display/uielement/UILink;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UILink;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->o:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    check-cast p2, Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/android/app/R$id;->q:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UILink;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    sget v2, Lcom/alipay/android/app/R$color;->f:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/alipay/android/app/display/uielement/bk;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/display/uielement/bk;-><init>(Lcom/alipay/android/app/display/uielement/UILink;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/alipay/android/app/display/uielement/bm;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/display/uielement/bm;-><init>(Lcom/alipay/android/app/display/uielement/UILink;Landroid/content/res/Resources;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    return-void
.end method

.method public final h()[I
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

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

    sget v0, Lcom/alipay/android/app/R$layout;->Y:I

    return v0
.end method
