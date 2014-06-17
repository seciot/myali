.class public abstract Lcom/alipay/android/mini/uielement/BaseElement;
.super Lcom/alipay/android/mini/uielement/IUIElement;


# static fields
.field private static D:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Lcom/alipay/android/mini/uielement/IUIComponet;

.field private E:Z

.field private F:[I

.field private G:Ljava/lang/String;

.field protected a:Z

.field protected b:Lcom/alipay/android/mini/uielement/ElementAction;

.field protected c:Lcom/alipay/android/mini/uielement/ElementAction;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/alipay/android/mini/uielement/ElementAction;

.field private r:Ljava/lang/String;

.field private s:Landroid/view/View;

.field private t:Ljava/lang/String;

.field private u:[I

.field private v:[I

.field private w:Z

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/mini/uielement/BaseElement;->D:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/IUIElement;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->a:Z

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->E:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->F:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->v:[I

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->h:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->x:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->y:I

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->B:Z

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->m:Z

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-boolean p3, p0, Lcom/alipay/android/mini/uielement/BaseElement;->a:Z

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->t()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->t()I

    move-result v2

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->q:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    new-instance v2, Lcom/alipay/android/mini/uielement/b;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/uielement/b;-><init>(Lcom/alipay/android/mini/uielement/BaseElement;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->F:[I

    invoke-static {v0, p1, v2}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;[I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->x:I

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->A:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->y:I

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->h:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->x:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_5
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->A:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->y:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->w:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->v:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/BaseElement;->v:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/BaseElement;->v:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/alipay/android/mini/uielement/BaseElement;->v:[I

    aget v5, v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_a

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v1, v3, v1

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v4, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_8
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/c;-><init>(Lcom/alipay/android/mini/uielement/BaseElement;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget v0, Lcom/alipay/android/mini/uielement/BaseElement;->D:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/mini/uielement/BaseElement;->D:I

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/mini/uielement/BaseElement;->D:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    return-object v0

    :cond_9
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_a
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_8

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v1, v3, v1

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    aget v4, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/BaseElement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->B:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/BaseElement;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->B:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Landroid/app/Activity;Landroid/view/View;)V
.end method

.method public final a(Lcom/alipay/android/mini/uielement/IUIComponet;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->C:Lcom/alipay/android/mini/uielement/IUIComponet;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->f:Ljava/lang/Object;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/IUIElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->e:Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->f:Ljava/lang/Object;

    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->g:Ljava/lang/String;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->h:Z

    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->i:F

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->j:Ljava/lang/String;

    const-string/jumbo v0, "tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->k:Ljava/lang/String;

    const-string/jumbo v0, "hint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->l:Ljava/lang/String;

    const-string/jumbo v0, "underline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->m:Z

    const-string/jumbo v0, "crossline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->n:Z

    const-string/jumbo v0, "overline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->o:Z

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->p:Ljava/lang/String;

    const-string/jumbo v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->q:Lcom/alipay/android/mini/uielement/ElementAction;

    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->r:Ljava/lang/String;

    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->t:Ljava/lang/String;

    const-string/jumbo v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->G:Ljava/lang/String;

    const-string/jumbo v1, "onclick"

    invoke-static {p1, v1}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    const-string/jumbo v1, "onload"

    invoke-static {p1, v1}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->b:Lcom/alipay/android/mini/uielement/ElementAction;

    const-string/jumbo v1, "cursor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->E:Z

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->z:Ljava/lang/String;

    :cond_0
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->A:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/BaseElement;->w:Z

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->v:[I

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->e(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->u:[I

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->d:Lcom/alipay/android/mini/event/OnElementEventListener;

    :cond_0
    return-void
.end method

.method public final f()Lcom/alipay/android/mini/uielement/IUIComponet;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->C:Lcom/alipay/android/mini/uielement/IUIComponet;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->E:Z

    return v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->h:Z

    return v0
.end method

.method protected final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/alipay/android/mini/uielement/ElementAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->q:Lcom/alipay/android/mini/uielement/ElementAction;

    return-object v0
.end method

.method protected final o()F
    .locals 1

    iget v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->i:F

    return v0
.end method

.method protected final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/BaseElement;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected abstract t()I
.end method

.method protected u()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->b:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->b:Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->x:I

    return-void
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->m:Z

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/BaseElement;->s:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public z()Landroid/widget/EditText;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
