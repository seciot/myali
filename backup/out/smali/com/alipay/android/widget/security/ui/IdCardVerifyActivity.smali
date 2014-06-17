.class public Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;
.implements Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "idcard_verify"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "alreadyKown"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private e:Lcom/alipay/android/widget/security/a/d;

.field private f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

.field private g:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v4, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;

    invoke-direct {v4, p0, p3}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;Ljava/lang/String;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$3;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)Lcom/alipay/android/widget/security/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->e:Lcom/alipay/android/widget/security/a/d;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.simplepwd.open"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "openResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d()V

    return-void
.end method


# virtual methods
.method public BindPhoneResult(Z)V
    .locals 0

    return-void
.end method

.method protected final a()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "isCertified"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.alipay.mobile.action.INSTALLMSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d()V

    goto :goto_0
.end method

.method b()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->e:Lcom/alipay/android/widget/security/a/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/a/d;->b(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->dismissProgressDialog()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "1801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u7ed1\u5b9a\u624b\u673a"

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->dismissProgressDialog()V

    throw v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "1802"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u5b9e\u540d\u8ba4\u8bc1"

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "1803"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u7acb\u5373\u8ba4\u8bc1"

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u62e8\u6253"

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "1834"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "5201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->e()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->w:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->g:Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v0, Lcom/alipay/android/widget/security/a/d;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/android/widget/security/a/d;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->e:Lcom/alipay/android/widget/security/a/d;

    new-instance v0, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;->a(Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.security.namecertified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.mobile.action.INSTALLMSP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->f:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onInstallFailed()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d()V

    return-void
.end method

.method public onPayFailed(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->d()V

    return-void
.end method

.method public onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/IdCardVerifyActivity;->b()V

    return-void
.end method
