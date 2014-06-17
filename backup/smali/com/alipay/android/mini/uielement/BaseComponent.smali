.class public abstract Lcom/alipay/android/mini/uielement/BaseComponent;
.super Lcom/alipay/android/mini/uielement/IUIComponet;


# instance fields
.field protected a:Ljava/util/List;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[I

.field private g:[I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/alipay/android/mini/uielement/ElementAction;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/IUIComponet;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->f:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->g:[I

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->h:Z

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->i:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Z)I
    .locals 2

    const/4 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/alipay/android/mini/util/AlignEnum;->valueOf(Ljava/lang/String;)Lcom/alipay/android/mini/util/AlignEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/AlignEnum;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x3

    const/16 v0, 0x9

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    return v0

    :pswitch_1
    const/4 v1, 0x5

    const/16 v0, 0xb

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x30

    const/16 v0, 0xa

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x50

    const/16 v0, 0xc

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    const/16 v0, 0xe

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x10

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/BaseComponent;)Lcom/alipay/android/mini/uielement/ElementAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->l:Lcom/alipay/android/mini/uielement/ElementAction;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 9

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/BaseComponent;->f()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->g:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->g:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->g:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->g:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(IIII)V

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v4, :cond_8

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, p3}, Lcom/alipay/android/mini/uielement/IUIElement;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->B()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/RelativeLayout;

    invoke-static {v0, v7}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v6, v7}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Ljava/lang/String;Z)I

    move-result v7

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_5
    const/4 v3, -0x1

    if-eq v7, v3, :cond_6

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_6
    const/4 v3, -0x1

    if-eq v8, v3, :cond_7

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_c

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    const/4 v8, 0x1

    if-le v2, v8, :cond_b

    if-nez v1, :cond_9

    sget v8, Lcom/alipay/android/app/R$drawable;->h:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_9
    add-int/lit8 v8, v2, -0x1

    if-ne v1, v8, :cond_a

    sget v8, Lcom/alipay/android/app/R$drawable;->f:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_a
    sget v8, Lcom/alipay/android/app/R$drawable;->g:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_b
    sget v8, Lcom/alipay/android/app/R$drawable;->D:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->f:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->f:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->f:[I

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->f:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    if-eqz p3, :cond_10

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    :goto_4
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->n:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->l:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/mini/uielement/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/a;-><init>(Lcom/alipay/android/mini/uielement/BaseComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_f
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    return-object v0

    :cond_10
    :try_start_1
    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->i:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
.end method

.method public final a(Lcom/alipay/android/mini/uielement/IUIElement;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/IUIComponet;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->e:Ljava/lang/String;

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->c:Ljava/lang/String;

    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->j:Ljava/lang/String;

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->m:Ljava/lang/String;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->n:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->o:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->h:Z

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->g:[I

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->i:Z

    invoke-static {v1}, Lcom/alipay/android/mini/util/UIPropUtil;->e(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->f:[I

    :cond_3
    const-string/jumbo v0, "together"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "together"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->k:Z

    :cond_4
    const-string/jumbo v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->l:Lcom/alipay/android/mini/uielement/ElementAction;

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/IUIElement;->dispose()V

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    :cond_1
    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract f()I
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseComponent;->o:Ljava/lang/String;

    return-object v0
.end method
