.class public Lcom/alipay/android/mini/uielement/UIBlock;
.super Lcom/alipay/android/mini/uielement/BaseComponent;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/ViewGroup;

.field private h:Z

.field private i:Landroid/widget/ScrollView;

.field private j:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseComponent;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UIBlock;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->f:Ljava/lang/String;

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->h:Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$layout;->u:I

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-super {p0, p1, v0, p3}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    if-le v1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    :cond_1
    iput v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    iget v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->j:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    :goto_0
    return-object v0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(IIII)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-super/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->b:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/mini/uielement/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/e;-><init>(Lcom/alipay/android/mini/uielement/UIBlock;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIBlock;->e:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->b:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->c:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->e:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->f:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->h:Z

    return-void
.end method

.method public final synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/UIBlock;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseComponent;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    return-void
.end method

.method protected final f()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->f:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIBlock;->e:Ljava/lang/String;

    return-object v0
.end method
