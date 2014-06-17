.class final Lcom/alipay/mobile/alipassapp/ui/common/ad;
.super Landroid/support/v4/view/PagerAdapter;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ad;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/ad;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ad;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ad;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ad;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ad;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
