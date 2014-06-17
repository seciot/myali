.class final Lcom/alipay/mobile/alipassapp/ui/common/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    :cond_2
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$300(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$300(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->startPayBridge(Ljava/lang/String;)V

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_dbarcode_msg:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_barcode:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_barcode:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_barcode_altText:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$400(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/au;

    if-eqz v0, :cond_0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_barcode:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :pswitch_1
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_dqrocde_msg:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_qrcode:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_qrcode:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_qrcode_altText:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/q;->a:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$400(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/au;

    if-eqz v0, :cond_0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_qrcode:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
