.class Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->d(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V

    :cond_0
    return-void
.end method
