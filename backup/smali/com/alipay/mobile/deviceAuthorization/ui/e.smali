.class final Lcom/alipay/mobile/deviceAuthorization/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/e;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/e;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    move-result-object v0

    return-object v0
.end method

.method public final onRefresh()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/e;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;Z)V

    return-void
.end method
