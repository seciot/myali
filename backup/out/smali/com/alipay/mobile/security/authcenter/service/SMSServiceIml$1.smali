.class Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;->a:Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;->a:Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;

    #getter for: Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->d:Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->access$000(Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;)Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;->a:Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;

    #getter for: Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->d:Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->access$000(Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;)Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;->a:Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;

    #getter for: Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->d:Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->access$000(Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;)Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml$1;->a:Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;

    #getter for: Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->d:Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;->access$000(Lcom/alipay/mobile/security/authcenter/service/SMSServiceIml;)Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
