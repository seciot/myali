.class final Lcom/alipay/mobile/deviceAuthorization/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->d:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 0

    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 4

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->d:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/n;->c:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
