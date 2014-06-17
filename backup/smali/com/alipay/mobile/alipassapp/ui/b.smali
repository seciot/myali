.class final Lcom/alipay/mobile/alipassapp/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/b;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canRefresh()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/b;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->alipass_scrollview:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ViewPagerScrollView;->isClick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "########get touch event ,the reuslt is v.isClick()=true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/b;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    return-object v0
.end method

.method public final onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/b;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onRefresh()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/b;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/b;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Z)V

    return-void
.end method
