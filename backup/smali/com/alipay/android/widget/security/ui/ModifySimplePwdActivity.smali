.class public Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_modify_simplepwd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$6;,
        Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Lcom/alipay/mobile/security/accountmanager/a/c;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private e:Ljava/lang/String;

.field private f:Landroid/support/v4/app/FragmentTransaction;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

.field private i:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;

.field private j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/security/accountmanager/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->c:Lcom/alipay/mobile/security/accountmanager/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_5

    :try_start_0
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->CheckSMS:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->c:Lcom/alipay/mobile/security/accountmanager/a/c;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LOGIN"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "5201"

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->dismissProgressDialog()V

    sget-object v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    sget-object v0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$6;->a:[I

    invoke-virtual {p1}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$FragId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cn:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    new-instance v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->i:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cn:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->i:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->i:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;

    new-instance v1, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment_;->a(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$SetIdCallBack;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cn:I

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->e:Ljava/lang/String;

    new-instance v3, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;

    invoke-direct {v3, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/a/c;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/accountmanager/a/c;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->c:Lcom/alipay/mobile/security/accountmanager/a/c;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->j:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u6821\u9a8c\u7801\u77ed\u4fe1\u53ef\u80fd\u7565\u6709\u5ef6\u8fdf\uff0c\u8bf7\u7a0d\u7b49\u3002"

    const-string/jumbo v3, "\u4e0d\u4e86"

    new-instance v4, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$5;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V

    const-string/jumbo v5, "\u597d\u7684"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
