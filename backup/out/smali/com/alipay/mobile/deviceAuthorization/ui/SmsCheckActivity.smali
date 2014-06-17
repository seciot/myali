.class public Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "auth_sms_check"
.end annotation


# instance fields
.field protected a:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "fragment_container"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

.field private d:Landroid/support/v4/app/FragmentTransaction;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/android/widget/security/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v0, "SmsCheckActivity"

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Lcom/alipay/android/widget/security/a/e;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->h:Lcom/alipay/android/widget/security/a/e;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hideaccount"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8bf7\u8f93\u5165\u624b\u673a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6536\u5230\u7684\u77ed\u4fe1\u6821\u9a8c\u7801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "PageTips"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsCheckCodePageTitle"

    const-string/jumbo v2, "\u586b\u5199\u6821\u9a8c\u7801"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsCheckCodeType"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->d:Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->d:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bj:I

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->d:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/at;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/at;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V

    return-void
.end method

.method protected b()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->h:Lcom/alipay/android/widget/security/a/e;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/a/e;->a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->dismissProgressDialog()V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->H:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;->resultCode:Ljava/lang/String;

    const-string/jumbo v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "5201"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->v:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/ui/as;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/as;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;->message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/android/widget/security/a/e;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/a/e;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->h:Lcom/alipay/android/widget/security/a/e;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/SmsCheckActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method
