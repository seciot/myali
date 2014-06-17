.class public Lcom/alipay/android/mini/uielement/UIInput;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Lcom/alipay/android/mini/widget/CustomEditText;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/android/mini/uielement/ElementAction;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Lcom/alipay/android/mini/widget/FormatBankcard;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Landroid/app/Activity;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Lcom/alipay/android/mini/util/CardValidateInputUtil;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->u:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->v:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->n:Z

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->s:Z

    return-void
.end method

.method private G()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/widget/CustomEditText;)V

    return-void
.end method

.method private a(Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->removeIcon()V

    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UIInput;->p:Lcom/alipay/android/mini/widget/FormatBankcard;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    const-string/jumbo v4, "card_no"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Lcom/alipay/android/mini/uielement/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/o;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    :goto_0
    sget v1, Lcom/alipay/android/app/R$drawable;->x:I

    invoke-static {v1, v2}, Lcom/alipay/android/mini/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/alipay/android/mini/uielement/p;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/uielement/p;-><init>(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/event/MiniEventArgs;)V

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    const-string/jumbo v3, "cvv"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/alipay/android/app/R$drawable;->G:I

    invoke-static {v0, v2}, Lcom/alipay/android/mini/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->J:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v0, v2}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/util/CardValidateInputUtil;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->w:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->y:I

    invoke-static {v1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/x;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/x;-><init>(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/widget/CustomEditText;)V

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/android/mini/widget/CustomEditText;->setDelIconShow(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/mini/uielement/UIInput;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->t:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/uielement/UIInput;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected F()V
    .locals 3

    const/16 v2, 0x1000

    const-string/jumbo v0, "num"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "en"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "cert"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "pinyin"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "email"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    move p1, v0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/UIInput;->t:Landroid/app/Activity;

    sget v0, Lcom/alipay/android/app/R$id;->B:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v0, Lcom/alipay/android/app/R$id;->z:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    sget v0, Lcom/alipay/android/app/R$id;->y:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->g:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/app/R$id;->A:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->s:Z

    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->n:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->a:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    :goto_3
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->a:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    if-le v2, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->i:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->r()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "card_validate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/widget/CustomEditText;->setCursorVisible(Z)V

    new-instance v0, Lcom/alipay/android/mini/util/CardValidateInputUtil;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->t:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->A()Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/util/CardValidateInputUtil;-><init>(Landroid/content/Context;Lcom/alipay/android/mini/widget/CustomEditText;Lcom/alipay/android/mini/event/OnElementEventListener;)V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->w:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/n;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/n;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_7
    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/mini/uielement/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/q;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->F()V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/alipay/android/mini/widget/FormatBankcard;

    invoke-direct {v0}, Lcom/alipay/android/mini/widget/FormatBankcard;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->p:Lcom/alipay/android/mini/widget/FormatBankcard;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->p:Lcom/alipay/android/mini/widget/FormatBankcard;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/FormatBankcard;->a(Landroid/widget/EditText;)V

    :cond_9
    const-string/jumbo v0, "cvv"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_a
    const-string/jumbo v0, "mobile"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/alipay/android/mini/widget/FormatPhoneNO;

    invoke-direct {v0}, Lcom/alipay/android/mini/widget/FormatPhoneNO;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/FormatPhoneNO;->a(Landroid/widget/EditText;)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/v;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/v;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/r;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setCustomOnFocusChangeListener(Lcom/alipay/android/mini/widget/CustomEditText$CustomOnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/s;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/s;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_4
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/alipay/android/mini/uielement/UIInput;->u:Z

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->u:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/UIInput;->v:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/w;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/w;-><init>(Lcom/alipay/android/mini/uielement/UIInput;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->i:Ljava/lang/String;

    const-string/jumbo v0, "onload"

    invoke-static {p1, v0}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->j:Lcom/alipay/android/mini/uielement/ElementAction;

    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->k:Ljava/lang/String;

    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->l:Ljava/lang/String;

    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->n:Z

    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->q:Ljava/lang/String;

    const-string/jumbo v0, "encoded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->s:Z

    const-string/jumbo v0, "format_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->r:Ljava/lang/String;

    const-string/jumbo v0, "must"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->o:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Landroid/view/View;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->o:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->l()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->o:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UIInput;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->A()Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v0

    instance-of v3, v0, Lcom/alipay/android/mini/window/IUIForm;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/alipay/android/mini/window/IUIForm;

    const-string/jumbo v3, "certtype"

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->d(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "A"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UIInput;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->h:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/alipay/android/app/R$string;->f:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->r:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->t:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UIInput;->r:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setCustomOnFocusChangeListener(Lcom/alipay/android/mini/widget/CustomEditText$CustomOnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->hiddenPopHint()V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->p:Lcom/alipay/android/mini/widget/FormatBankcard;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->j:Lcom/alipay/android/mini/uielement/ElementAction;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->t:Landroid/app/Activity;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->s()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UIInput;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->r()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "card_validate"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UIInput;->w:Lcom/alipay/android/mini/util/CardValidateInputUtil;

    invoke-virtual {v3}, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    iget-boolean v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->u:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UIInput;->v:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "local"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIInput;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/u;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/u;-><init>(Lcom/alipay/android/mini/uielement/UIInput;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method protected t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->o:I

    return v0
.end method

.method protected final u()V
    .locals 4

    const-string/jumbo v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cvv"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIInput;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/widget/CustomEditText;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->j:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->j:Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {p0, p0, v3}, Lcom/alipay/android/mini/uielement/UIInput;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/ActionType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIInput;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method
