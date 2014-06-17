.class final Lcom/alipay/mobile/security/accountmanager/ui/bl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method
