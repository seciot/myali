.class public Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "authentication_certified_container"
.end annotation


# instance fields
.field private c:Landroid/support/v4/app/FragmentManager;

.field private d:Landroid/support/v4/app/Fragment;

.field private e:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private h:Lcom/alipay/android/widget/security/service/a;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 9
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->c:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->h:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "pc"

    const-string/jumbo v2, "sourceId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "pcDrainageDataView"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->c()V

    return-void
.end method

.method protected a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->M:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->h:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widget/security/service/a;->a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->success:Z

    if-eqz v1, :cond_9

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "certifiedResult"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "5106"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "5126"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "5127"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string/jumbo v2, "5127"

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    :goto_1
    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_4
    :try_start_2
    const-string/jumbo v2, "5107"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "5108"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "5109"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "5120"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "5121"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "5122"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment_;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment_;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "5124"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment_;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "5125"

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment_;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment_;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "700"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;Landroid/content/Context;Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity$OnFrozenCancelClickedListener;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "202"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->message:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$2;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->toast(Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->c:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->b:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alipay/android/widget/security/ui/authentication/CertifiedSuccessShootFragment_;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment_;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment_;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment_;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->d:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment_;

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->i:Z

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
