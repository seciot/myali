.class public Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000021"

    const-string/jumbo v3, "travelItineraryDetails"

    const-string/jumbo v4, "historyTravelList"

    const-string/jumbo v5, "seeHistoryTravelItinerary"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    const-string/jumbo v0, "TRAVEL"

    return-object v0
.end method

.method protected final j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;
    .locals 2

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;-><init>()V

    const-string/jumbo v1, "TRAVEL"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPassCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "PAST"

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setTimeStatus(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setPageSize(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setRowSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->setNeedPaging(Z)V

    return-object v0
.end method

.method protected final k()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/aj;->a(Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/ui/bb;->b(Z)V

    return-void
.end method

.method final m()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_travel_past_list_error:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
