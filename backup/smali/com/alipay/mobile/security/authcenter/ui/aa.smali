.class final Lcom/alipay/mobile/security/authcenter/ui/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/y;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/y;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0, p1}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->b(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/security/authcenter/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/security/authcenter/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

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

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    const/16 v0, 0x3e8

    iget v1, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->resultStatus:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0x44f

    iget v1, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->resultStatus:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cN:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u6211\u77e5\u9053\u4e86"

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/ab;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/ab;-><init>(Lcom/alipay/mobile/security/authcenter/ui/aa;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v4

    iget-object v6, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->memo:Ljava/lang/String;

    const-string/jumbo v7, "\u786e\u5b9a"

    new-instance v8, Lcom/alipay/mobile/security/authcenter/ui/ac;

    invoke-direct {v8, p0, p2}, Lcom/alipay/mobile/security/authcenter/ui/ac;-><init>(Lcom/alipay/mobile/security/authcenter/ui/aa;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v4 .. v10}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
