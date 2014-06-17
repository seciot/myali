.class public abstract Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field public c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string/jumbo v0, "http://fun.alipay.com/bank/certify.htm"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method protected static a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "certifiedResult"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "JSON error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected static a(Z)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isCertified"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method

.method protected final a(Lcom/alipay/android/widget/security/service/a;)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Lcom/alipay/android/widget/security/service/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;->newExpressCard(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "initiateBindCardView"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;-><init>()V

    iget-object v0, p2, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->certNo:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->certNo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->logonId:Ljava/lang/String;

    iget-object v0, p2, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->name:Ljava/lang/String;

    iget-object v0, p2, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->userId:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v2, "\u8ba4\u8bc1\u4e2d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Lcom/alipay/android/widget/security/service/a;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_4

    iget-boolean v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->success:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "5105"

    iget-object v2, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "certifiedResult"

    iget-boolean v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->canUpgradeACertify:Z

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    throw v1

    :cond_3
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fromWhich"

    const-string/jumbo v3, "VerifyCertifyByMspRes"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "certifiedResult"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public final a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setIsCertified(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Lcom/alipay/android/widget/security/service/a;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->logonId:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->showBankList:Z

    iput-boolean v2, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->noticeBindCardNotCert:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v2, "\u8ba4\u8bc1\u4e2d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Lcom/alipay/android/widget/security/service/a;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_9

    const-string/jumbo v0, "5100"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->cardInfo:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a(Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    throw v1

    :cond_2
    :try_start_1
    const-string/jumbo v0, "5101"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a(Lcom/alipay/android/widget/security/service/a;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "5104"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "5128"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fromWhich"

    const-string/jumbo v3, "CheckCertifyByMspRes"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "certifiedResult"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "5105"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "certifiedResult"

    iget-boolean v2, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->canUpgradeACertify:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "5103"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "202"

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->message:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$3;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected final c()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "scode"

    const-string/jumbo v2, "app_renzheng"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000011"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
