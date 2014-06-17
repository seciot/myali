.class final Lcom/alipay/mobile/deviceAuthorization/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/i;->b:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/i;->a:Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/i;->b:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/i;->a:Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;->b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity_;Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    return-void
.end method
