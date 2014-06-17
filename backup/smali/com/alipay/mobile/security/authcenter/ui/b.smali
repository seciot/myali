.class final Lcom/alipay/mobile/security/authcenter/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->b(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Lcom/alipay/mobile/security/authcenter/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/a/a;->a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->b(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Lcom/alipay/mobile/security/authcenter/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/security/authcenter/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    iget-boolean v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->succ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;->SetPwd:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    iget-boolean v0, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->succ:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "1107"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/c;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/c;-><init>(Lcom/alipay/mobile/security/authcenter/ui/b;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/b;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
