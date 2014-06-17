.class public final Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;
.super Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/j;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/j;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/i;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/i;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/h;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
