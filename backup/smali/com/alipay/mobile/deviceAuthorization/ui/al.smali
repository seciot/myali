.class final Lcom/alipay/mobile/deviceAuthorization/ui/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/al;->b:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/al;->a:Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/al;->b:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/al;->a:Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;->a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity_;Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    return-void
.end method
