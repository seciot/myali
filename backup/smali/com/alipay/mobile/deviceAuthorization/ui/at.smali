.class final Lcom/alipay/mobile/deviceAuthorization/ui/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/android/widget/security/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/a/e;->a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/android/widget/security/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v3}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->d(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/alipay/android/widget/security/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->success:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    const/16 v1, 0x3e81

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->success:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "1107"

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    iget-object v2, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->message:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/ui/au;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/au;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/at;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/at;->a:Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
