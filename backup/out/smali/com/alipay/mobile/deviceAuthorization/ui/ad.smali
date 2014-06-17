.class final Lcom/alipay/mobile/deviceAuthorization/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ad;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

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

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ad;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    move-result-object v0

    return-object v0
.end method

.method public final onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ad;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;Z)V

    return-void
.end method
