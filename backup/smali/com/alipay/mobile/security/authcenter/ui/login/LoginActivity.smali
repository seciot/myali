.class public Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

# interfaces
.implements Lcom/alipay/mobile/security/authcenter/b/a/a;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "login_container"
.end annotation


# instance fields
.field protected a:Landroid/view/ViewGroup;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "login_frame"
    .end annotation
.end field

.field private b:Landroid/support/v4/app/FragmentManager;

.field private c:Z

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private e:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->c:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "loginInfo"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    if-nez v0, :cond_0

    const-string/jumbo v1, "account"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "forAutoLogin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "isMobileUser"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v6}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/y;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/security/authcenter/ui/y;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->a(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "source_accountSelectAccount"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "source_gesture"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    const-string/jumbo v0, "loginInfo"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->a(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->c:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->e:Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->e:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->e:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->e:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {}, Landroid/util/SmartBarUtils;->hasSmartBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->a:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->fJ:I

    if-ne v0, v2, :cond_1

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u6821\u9a8c\u7801\u77ed\u4fe1\u53ef\u80fd\u7565\u6709\u5ef6\u8fdf\uff0c\u8bf7\u7a0d\u7b49\u3002"

    const-string/jumbo v3, "\u4e0d\u4e86"

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/w;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/w;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;)V

    const-string/jumbo v5, "\u597d\u7684"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->c:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->ah:I

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v2, 0x51

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->c:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/x;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/x;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v7

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->e:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->e:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
