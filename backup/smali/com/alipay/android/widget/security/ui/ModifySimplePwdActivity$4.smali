.class Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/security/accountmanager/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->c(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/security/accountmanager/a/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cN:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u6211\u77e5\u9053\u4e86"

    new-instance v4, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$1;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "700"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u786e\u5b9a"

    new-instance v8, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$2;

    invoke-direct {v8, p0, p2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4$2;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v4 .. v10}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method
