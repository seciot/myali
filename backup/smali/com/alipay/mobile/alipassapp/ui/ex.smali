.class final Lcom/alipay/mobile/alipassapp/ui/ex;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode_msg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode_altText:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v5}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Lcom/alipay/mobile/alipassapp/ui/common/au;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->startPayBridge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ex;->a:Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
