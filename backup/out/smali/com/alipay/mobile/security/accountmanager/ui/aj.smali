.class final Lcom/alipay/mobile/security/accountmanager/ui/aj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->dismissProgressDialog()V

    const-string/jumbo v1, "rs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aj;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
