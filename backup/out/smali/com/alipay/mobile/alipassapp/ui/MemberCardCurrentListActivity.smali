.class public Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;-><init>()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/do;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/do;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
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

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "20000062Details"

    const-string/jumbo v2, "seeCard"

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "card"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "p"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "cache_version"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassCacheVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "pass_is_cacheable"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "b"

    const-string/jumbo v2, "MCARD"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "is_invalid"

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->f()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/mobile/alipassapp/biz/model/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->b()Landroid/view/View;

    move-result-object v1

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasPast()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasCurrent()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->member_card_nonetwork_toast:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasCurrent()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->g:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_footview_load_past_pass:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->g:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_load_past_pass_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->member_card_view_past:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MCARD"

    return-object v0
.end method

.method protected final j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;-><init>()V

    const-string/jumbo v1, "MCARD"

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
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->member_card:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->member_card_get:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/dn;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/dn;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->b(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_membercard_no_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->b()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method final l()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
