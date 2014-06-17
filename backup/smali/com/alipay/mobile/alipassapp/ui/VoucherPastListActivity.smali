.class public Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final f()Z
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
    .locals 2

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;-><init>()V

    const-string/jumbo v1, "COUPON"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPassCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "PAST"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setTimeStatus(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPageSize(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setRowSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setNeedPaging(Z)V

    return-object v0
.end method

.method protected final k()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/aj;->a(Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->b(Z)V

    return-void
.end method

.method final m()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_coupon_past_list_error:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
