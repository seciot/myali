.class public Lcom/alipay/android/widget/security/component/XListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/component/XListView$a;,
        Lcom/alipay/android/widget/security/component/XListView$b;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/alipay/android/widget/security/component/XListView$a;

.field private e:Lcom/alipay/android/widget/security/component/XListViewHeader;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/alipay/android/widget/security/component/XListViewFooter;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/component/XListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/component/XListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/component/XListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/alipay/android/widget/security/component/XListView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->b:Landroid/widget/Scroller;

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/alipay/android/widget/security/component/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->gy:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->gB:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/component/XListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/alipay/android/widget/security/component/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/widget/security/component/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/component/a;-><init>(Lcom/alipay/android/widget/security/component/XListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/widget/security/component/XListView;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/widget/security/component/XListView;->h:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/widget/security/component/XListView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/widget/security/component/XListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/component/XListView;->c()V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewHeader;->getVisiableHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/widget/security/component/XListView;->h:I

    if-le v2, v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/android/widget/security/component/XListView;->h:I

    if-le v2, v0, :cond_3

    iget v0, p0, Lcom/alipay/android/widget/security/component/XListView;->h:I

    move v3, v0

    :goto_1
    iput v1, p0, Lcom/alipay/android/widget/security/component/XListView;->p:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->b:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->d:Lcom/alipay/android/widget/security/component/XListView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->d:Lcom/alipay/android/widget/security/component/XListView$a;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/component/XListView$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/component/XListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/widget/security/component/XListView;->p:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    iget-object v1, p0, Lcom/alipay/android/widget/security/component/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewHeader;->setVisiableHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->postInvalidate()V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/component/XListView;->a()V

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    iget-object v1, p0, Lcom/alipay/android/widget/security/component/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public ismIsFooterReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p4, p0, Lcom/alipay/android/widget/security/component/XListView;->o:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v2, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/widget/security/component/XListView;->h:I

    if-le v0, v1, :cond_1

    iput-boolean v4, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewHeader;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->d:Lcom/alipay/android/widget/security/component/XListView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->d:Lcom/alipay/android/widget/security/component/XListView$a;

    invoke-interface {v0}, Lcom/alipay/android/widget/security/component/XListView$a;->a()V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/widget/security/component/XListView;->b()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/alipay/android/widget/security/component/XListView;->a:F

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/component/XListViewHeader;->getVisiableHeight()I

    move-result v2

    if-gtz v2, :cond_3

    cmpl-float v2, v0, v5

    if-lez v2, :cond_6

    :cond_3
    const v2, 0x3fe66666

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    float-to-int v0, v0

    iget-object v3, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v3}, Lcom/alipay/android/widget/security/component/XListViewHeader;->getVisiableHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/alipay/android/widget/security/component/XListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v2, p0, Lcom/alipay/android/widget/security/component/XListView;->h:I

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v0, v4}, Lcom/alipay/android/widget/security/component/XListViewHeader;->setState(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setSelection(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/component/XListView;->a()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->e:Lcom/alipay/android/widget/security/component/XListViewHeader;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewHeader;->setState(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->getLastVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/widget/security/component/XListView;->o:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/component/XListViewFooter;->getBottomMargin()I

    move-result v2

    if-gtz v2, :cond_7

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewFooter;->getBottomMargin()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/component/XListView;->l:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/component/XListView;->m:Z

    if-nez v2, :cond_8

    if-le v0, v4, :cond_9

    iget-object v1, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v1, v4}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setState(I)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setBottomMargin(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v2, v1}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setState(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/alipay/android/widget/security/component/XListView;->o:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewFooter;->getBottomMargin()I

    move-result v0

    if-le v0, v4, :cond_b

    invoke-direct {p0}, Lcom/alipay/android/widget/security/component/XListView;->c()V

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewFooter;->getBottomMargin()I

    move-result v2

    if-lez v2, :cond_2

    iput v4, p0, Lcom/alipay/android/widget/security/component/XListView;->p:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/component/XListView;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reMoveFoorView()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/component/XListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/android/widget/security/component/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/component/XListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/component/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/alipay/android/widget/security/component/XListView;->l:Z

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewFooter;->hide()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/alipay/android/widget/security/component/XListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListViewFooter;->show()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    new-instance v1, Lcom/alipay/android/widget/security/component/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/component/b;-><init>(Lcom/alipay/android/widget/security/component/XListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setXListViewListener(Lcom/alipay/android/widget/security/component/XListView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/component/XListView;->d:Lcom/alipay/android/widget/security/component/XListView$a;

    return-void
.end method

.method public setmIsFooterReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/widget/security/component/XListView;->n:Z

    return-void
.end method

.method public stopLoadMore()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/alipay/android/widget/security/component/XListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/component/XListView;->k:Lcom/alipay/android/widget/security/component/XListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/component/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/component/XListView;->j:Z

    invoke-direct {p0}, Lcom/alipay/android/widget/security/component/XListView;->b()V

    :cond_0
    return-void
.end method
