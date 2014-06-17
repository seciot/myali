.class public abstract Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
.end annotation


# instance fields
.field protected g:Lcom/alipay/mobile/security/authcenter/a/e;

.field protected h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->i:Ljava/lang/String;

    return-void
.end method

.method protected abstract a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation
.end method

.method d(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->g:Lcom/alipay/mobile/security/authcenter/a/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/a/e;->a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->a(Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->e()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    throw v1
.end method

.method protected final e()V
    .locals 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/e;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/a/e;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->g:Lcom/alipay/mobile/security/authcenter/a/e;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/SmsBaseFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    return-void
.end method
