.class public Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# instance fields
.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v3, :cond_0

    move-object v15, v2

    check-cast v15, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "20000030"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "couponDetails"

    const-string/jumbo v9, "myCouponList"

    const-string/jumbo v10, "seeCoupon"

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const-string/jumbo v13, ""

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v16

    const/16 v16, 0x1

    invoke-virtual {v15}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPartnerID()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v16

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/alipay/mobile/alipassapp/biz/model/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_voucher_nonetwork_toast:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->a(I)V

    :cond_0
    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->g:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_footview_load_past_pass:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_load_past_pass_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/fj;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/fj;-><init>(Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_goto_voucher_web:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "COUPON"

    return-object v0
.end method

.method protected final j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;-><init>()V

    const-string/jumbo v1, "COUPON"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPassCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "CURRENT"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setTimeStatus(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPageSize(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setRowSize(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setNeedPaging(Z)V

    return-object v0
.end method

.method protected final k()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/aj;->a(Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->b(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
