.class public Lcom/alipay/android/mini/uielement/UISelectButton;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UISelectButton;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/UISelectButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/uielement/UISelectButton;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->f:Landroid/view/View;

    sget v1, Lcom/alipay/android/app/R$id;->F:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->f:Landroid/view/View;

    sget v1, Lcom/alipay/android/app/R$id;->G:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/android/mini/uielement/ab;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/uielement/ab;-><init>(Lcom/alipay/android/mini/uielement/UISelectButton;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v1, Lcom/alipay/android/mini/uielement/ad;

    invoke-direct {v1, p0, v4}, Lcom/alipay/android/mini/uielement/ad;-><init>(Lcom/alipay/android/mini/uielement/UISelectButton;B)V

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/android/mini/uielement/ac;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/uielement/ac;-><init>(Lcom/alipay/android/mini/uielement/UISelectButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    sget v2, Lcom/alipay/android/app/R$drawable;->E:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$dimen;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISelectButton;->f()Lcom/alipay/android/mini/uielement/IUIComponet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/IUIComponet;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISelectButton;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->g:Ljava/util/List;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->g:Ljava/util/List;

    const-string/jumbo v4, "text"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->h:Ljava/util/List;

    const-string/jumbo v4, "val"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISelectButton;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

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

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->e:Landroid/widget/ListView;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISelectButton;->s()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UISelectButton;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UISelectButton;->i:Ljava/lang/String;

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

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->v:I

    return v0
.end method
