.class final Lcom/alipay/mobile/alipassapp/ui/common/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

.field final synthetic b:Lcom/alipay/mobile/commonui/widget/APImageView;

.field final synthetic c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;Lcom/alipay/mobile/commonui/widget/APImageView;Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    const/16 v4, 0x320

    const/4 v5, 0x0

    new-instance v6, Lcom/alipay/mobile/alipassapp/ui/common/aa;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/alipassapp/ui/common/aa;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/z;)V

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/z;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
