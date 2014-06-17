.class public Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_complete_phone_userinfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$1;,
        Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/security/authcenter/a/a;

.field private c:Landroid/support/v4/app/FragmentTransaction;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

.field private h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "registBindToCard"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8df3\u8f6c\u5230\u767b\u9646\u9875\u9762\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Lcom/alipay/mobile/security/authcenter/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->b:Lcom/alipay/mobile/security/authcenter/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->b:Lcom/alipay/mobile/security/authcenter/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/a/a;->a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->succ:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0

    :cond_3
    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d:Ljava/lang/String;

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

    const-string/jumbo v2, "smsCheckCodePageTitle"

    const-string/jumbo v3, "\u586b\u5199\u6821\u9a8c\u7801"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "PageTips"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsCheckCodeType"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->g:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->g:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aK:I

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->g:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->g:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/b;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aK:I

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/d;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/authcenter/ui/d;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->d:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->b:Lcom/alipay/mobile/security/authcenter/a/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a()V

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;->CheckSMS:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
