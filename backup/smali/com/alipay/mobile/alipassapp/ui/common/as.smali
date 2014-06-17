.class final Lcom/alipay/mobile/alipassapp/ui/common/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    #setter for: Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mHeight:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->access$002(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;I)I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mHeight:I
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->access$000(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->d:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/as;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    #calls: Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->refreshPrimaryText(Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;Ljava/util/List;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method
