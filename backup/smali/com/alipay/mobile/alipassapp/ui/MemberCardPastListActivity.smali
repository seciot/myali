.class public Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# instance fields
.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    const-string/jumbo v2, "20000062OverdueDetails"

    const-string/jumbo v3, "seeCard"

    invoke-virtual {p0, v2, v3, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V

    const-string/jumbo v2, "p"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "b"

    const-string/jumbo v2, "MCARD"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "is_invalid"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

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

    const-string/jumbo v0, "MCARD"

    return-object v0
.end method

.method protected final j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;
    .locals 2

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;-><init>()V

    const-string/jumbo v1, "MCARD"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPassCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "PAST"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setTimeStatus(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPageSize(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->member_card_past:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->b(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_membercard_no_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_no_card_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->tv_no_card_msg_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->member_card_no_past_card_msg_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final l()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->m()V

    return-void
.end method

.method final m()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
