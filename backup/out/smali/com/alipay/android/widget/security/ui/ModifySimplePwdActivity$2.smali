.class Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/security/accountmanager/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LOGIN"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v0, p2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/security/accountmanager/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->c(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/security/accountmanager/a/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "5310"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->SetPwd:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "5313"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->CheckId:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    const-string/jumbo v1, "\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "5201"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2$1;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
