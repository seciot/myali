.class public Lcom/alipay/android/mini/uielement/UISimplePassword;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field e:Landroid/widget/LinearLayout;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:Landroid/widget/EditText;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UISimplePassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UISimplePassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UISimplePassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/UISimplePassword;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/uielement/UISimplePassword;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->i:Z

    return v0
.end method


# virtual methods
.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->n:Z

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    check-cast p2, Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/android/app/R$id;->E:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->e:Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/android/app/R$id;->N:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/alipay/android/app/R$id;->O:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/alipay/android/app/R$id;->P:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/alipay/android/app/R$id;->Q:I

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/alipay/android/app/R$id;->R:I

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcom/alipay/android/app/R$id;->S:I

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/alipay/android/app/R$id;->M:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/mini/uielement/af;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/af;-><init>(Lcom/alipay/android/mini/uielement/UISimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ag;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ag;-><init>(Lcom/alipay/android/mini/uielement/UISimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x4160

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    div-int/lit8 v0, v0, 0x6

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "auto"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->i:Z

    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->j:Ljava/lang/String;

    const-string/jumbo v0, "format_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->k:Ljava/lang/String;

    const-string/jumbo v0, "format_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->l:Ljava/lang/String;

    const-string/jumbo v0, "verifyweak"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->n:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

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

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->e:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->l()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 9

    const-wide/16 v7, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->k:Ljava/lang/String;

    const-string/jumbo v5, "md5"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/alipay/android/app/encrypt/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/alipay/android/app/R$string;->f:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->l:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->l:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/android/mini/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :cond_3
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->n:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/mini/util/UIPropUtil;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    new-instance v4, Lcom/alipay/android/mini/uielement/ah;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/mini/uielement/ah;-><init>(Lcom/alipay/android/mini/uielement/UISimplePassword;Landroid/app/Activity;)V

    invoke-virtual {v1, v4, v7, v8}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    :goto_1
    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/alipay/android/mini/util/UIPropUtil;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Lcom/alipay/android/mini/util/UIPropUtil;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    new-instance v4, Lcom/alipay/android/mini/uielement/ai;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/mini/uielement/ai;-><init>(Lcom/alipay/android/mini/uielement/UISimplePassword;Landroid/app/Activity;)V

    invoke-virtual {v1, v4, v7, v8}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->e:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->s()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ae;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ae;-><init>(Lcom/alipay/android/mini/uielement/UISimplePassword;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->a(I)V

    :cond_0
    return-void
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->x:I

    return v0
.end method

.method protected final u()V
    .locals 0

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISimplePassword;->h:Landroid/widget/EditText;

    return-object v0
.end method
