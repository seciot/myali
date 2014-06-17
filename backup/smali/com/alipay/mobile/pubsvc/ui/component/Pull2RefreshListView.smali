.class public Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;
.super Landroid/widget/ListView;
.source "Pull2RefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/animation/RotateAnimation;

.field private g:Landroid/view/animation/RotateAnimation;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/widget/AbsListView$OnScrollListener;

.field private n:I

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Z

.field private r:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 75
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 81
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 270
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->q:Z

    if-eqz v0, :cond_0

    .line 292
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->q:Z

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 316
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$drawable;->framework_pull_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->b:Landroid/view/LayoutInflater;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->b:Landroid/view/LayoutInflater;

    sget v5, Lcom/alipay/mobile/publicsvc/common/R$layout;->pull2freshlistview_head:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    sget v5, Lcom/alipay/mobile/publicsvc/common/R$id;->refresh_indicator:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->e:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    sget v5, Lcom/alipay/mobile/publicsvc/common/R$id;->refresh_text:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->d:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    sget v5, Lcom/alipay/mobile/publicsvc/common/R$id;->loading:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->o:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    sget v5, Lcom/alipay/mobile/publicsvc/common/R$id;->refresh:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->p:Landroid/view/View;

    .line 97
    iget-object v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12, v12, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v7, 0x4000

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->i:I

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "width:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->i:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " height:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v12}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 108
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 110
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->f:Landroid/view/animation/RotateAnimation;

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->f:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 117
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->g:Landroid/view/animation/RotateAnimation;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->g:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->g:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 125
    iput-boolean v12, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->s:Z

    .line 126
    return-void

    .line 97
    :cond_1
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->r:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->r:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;->onRefresh()V

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 394
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    return-void
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 345
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 346
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 133
    :cond_0
    iput p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->l:I

    .line 134
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 140
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 143
    iget-boolean v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->s:Z

    if-nez v1, :cond_0

    .line 144
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 255
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 149
    :pswitch_0
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->l:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->h:Z

    if-nez v1, :cond_1

    .line 150
    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->h:Z

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    .line 152
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto :goto_1

    .line 156
    :pswitch_1
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-eq v1, v6, :cond_3

    .line 157
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 160
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-ne v1, v0, :cond_2

    .line 161
    iput v4, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 162
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 164
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    .line 166
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-nez v0, :cond_3

    .line 167
    iput v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 168
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->b()V

    .line 171
    sget-object v0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    .line 174
    :cond_3
    iput-boolean v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->h:Z

    .line 175
    iput-boolean v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->q:Z

    goto :goto_1

    .line 178
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 180
    iget-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->h:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->l:I

    if-nez v2, :cond_4

    .line 181
    sget-object v2, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    .line 182
    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->h:Z

    .line 183
    iput v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    .line 186
    :cond_4
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->h:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-eq v2, v6, :cond_1

    .line 191
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-nez v2, :cond_5

    .line 192
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setSelection(I)V

    .line 194
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    if-ge v2, v3, :cond_8

    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int v2, v1, v2

    if-lez v2, :cond_8

    .line 196
    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 197
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 198
    sget-object v2, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    .line 212
    :cond_5
    :goto_2
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-ne v2, v0, :cond_6

    .line 213
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->setSelection(I)V

    .line 215
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    if-lt v2, v3, :cond_9

    .line 216
    iput v5, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 217
    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->q:Z

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 220
    sget-object v2, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    .line 232
    :cond_6
    :goto_3
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-ne v2, v4, :cond_7

    .line 233
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int v2, v1, v2

    if-lez v2, :cond_7

    .line 234
    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 235
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 240
    :cond_7
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-ne v2, v0, :cond_a

    .line 241
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    mul-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 201
    :cond_8
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int v2, v1, v2

    if-gtz v2, :cond_5

    .line 202
    iput v4, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 203
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 204
    sget-object v2, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto :goto_2

    .line 223
    :cond_9
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int v2, v1, v2

    if-gtz v2, :cond_6

    .line 224
    iput v4, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 225
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 227
    sget-object v2, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a:Ljava/lang/String;

    goto :goto_3

    .line 247
    :cond_a
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    if-nez v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->c:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->k:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->j:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recordCompleteTime()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public redirectToLoad()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->n:I

    .line 260
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->a()V

    .line 261
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->b()V

    .line 262
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->recordCompleteTime()V

    .line 382
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    return-void
.end method

.method public setOnRefreshListener(Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->r:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->r:Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView$OnRefreshListener;

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->s:Z

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->s:Z

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/Pull2RefreshListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 388
    return-void
.end method
