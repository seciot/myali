.class final Lcom/alipay/mobile/alipassapp/ui/dp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "dbarcode"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/ui/common/au;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->startPayBridge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v2, v1

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/dp;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->getAltText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/au;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
