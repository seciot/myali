.class public final Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;
.super Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/ai;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ai;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ah;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/ah;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ag;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/ag;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity_;Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
