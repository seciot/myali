.class Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/security/accountmanager/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/security/accountmanager/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1, p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->SetPwd:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method
