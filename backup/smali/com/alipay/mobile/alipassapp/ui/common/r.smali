.class final Lcom/alipay/mobile/alipassapp/ui/common/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$500(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)[Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$500(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)[Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$500(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)[Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    aget-object v1, v1, v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->guide_dot_black:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$500(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)[Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    aget-object v1, v1, v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->guide_dot_white:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->SLIDED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/r;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$600(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    const-string/jumbo v3, "change"

    #calls: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->addOperationLog(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$700(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V

    return-void
.end method
