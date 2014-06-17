.class public Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;
.super Landroid/widget/ExpandableListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method


# virtual methods
.method public configureHeaderView(II)V
    .locals 4

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;->getHeaderState(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->hideHeaderView()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PINNED_HEADER_VISIBLE, mHeaderView.getTop()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-interface {v0, v3, p1, p2, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;->configureHeader(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setHeaderViewTopOffset(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->showHeaderView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_3

    sub-int v1, v0, v3

    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-interface {v2, v3, p1, p2, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;->configureHeader(Landroid/view/View;III)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setHeaderViewTopOffset(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PINNED_HEADER_PUSHED_UP, y="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected headerViewClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getExpandableListPosition(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;-><init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;I)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->collapseGroup(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->expandGroup(I)Z

    goto :goto_0
.end method

.method protected hideHeaderView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->measureChild(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getExpandableListPosition(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->configureHeaderView(II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    check-cast p1, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->requestLayout()V

    return-void
.end method

.method protected setHeaderViewTopOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected showHeaderView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;-><init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
