.class public abstract Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
.end annotation


# instance fields
.field private d:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field private e:Lcom/alipay/mobile/common/utils/CacheSet;

.field final o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field protected r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkCodeGetter"
    .end annotation
.end field

.field protected s:Lcom/alipay/mobile/security/authcenter/ui/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;-><init>()V

    const-string/jumbo v0, "BaseLoginFragment"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->o:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/x;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->e:Lcom/alipay/mobile/common/utils/CacheSet;

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v5, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "20000006"

    invoke-interface {v0, v5, v6, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->e:Lcom/alipay/mobile/common/utils/CacheSet;

    const-string/jumbo v2, "isValidScheme"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x80

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/CommentHelper;->extractZipComment(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000009"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobilesecurity/a/a/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/p;

    invoke-direct {v4, p0, v3, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/p;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;ZLandroid/net/Uri;)V

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v3, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v4

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->d(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->d(Z)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "source_selectAccount"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "source_login"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_5

    const-string/jumbo v1, "source_switchUser"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000018"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "registBindToCard"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "registBindToCard"

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(ZLjava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "source_accountSelectAccount"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "source_login"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_8

    const-string/jumbo v1, "source_switchUser"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    :try_start_5
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000027"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "source_gesture"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(ZLjava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "isGoMain"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->c()V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "registbindToFundBao"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "registbindToFundBao"

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(ZLjava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    const-string/jumbo v2, "loginout"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(ZLjava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->d(Z)V

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bJ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/authcenter/ui/login/m;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/m;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bG:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bZ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->c()V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/login/q;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/q;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

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

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)Lcom/alipay/mobile/framework/service/common/SchemeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->d:Lcom/alipay/mobile/framework/service/common/SchemeService;

    return-object v0
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V
    .locals 21
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v15

    new-instance v2, Lcom/alipay/mobile/security/authcenter/a/e;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v2}, Lcom/alipay/mobile/security/authcenter/a/e;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/authcenter/a/e;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v17, v5, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v8, "alipayLoginView"

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "perf_login"

    const/4 v11, 0x0

    const-string/jumbo v12, "s"

    const-string/jumbo v13, "c"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, ""

    aput-object v20, v14, v19

    const/16 v19, 0x1

    const-string/jumbo v20, ""

    aput-object v20, v14, v19

    const/16 v19, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    const/16 v19, 0x3

    const-string/jumbo v20, ""

    aput-object v20, v14, v19

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "login end duration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->logonId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1, v15}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void

    :cond_0
    const-string/jumbo v8, "taobaoLoginView"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    throw v3
.end method

.method protected abstract a(Lcom/alipay/mobile/login/bean/b;)V
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    if-eqz p3, :cond_11

    const/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getSecurityPolicyRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->isNeedH5()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity_;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "URL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->getSecurityH5Url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?securityId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->getSecurityId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&callbackUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "https://www.alipay.com/webviewbridge?action=quit"

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "securityId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->getSecurityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x10

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x40c

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/r;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/r;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x7da

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/16 v1, 0x7db

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_6

    :cond_4
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/x;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/authcenter/ui/x;->a([B)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/authcenter/ui/x;->a()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a([B)V

    :goto_1
    const-string/jumbo v1, ""

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/x;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/x;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/x;->a()V

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x3f3

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_9

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "alipay"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "logonId"

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xaf1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x407

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x822

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x3ef

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "tabao_user_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "taobao_password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xaf2

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x3fc

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_c

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/s;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/s;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->bk:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/clientsecurity/R$string;->aJ:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x3eb

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/t;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/t;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    invoke-direct {p0, p3, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x3ec

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_e

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p3, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x3ee

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_f

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v5

    if-eqz v2, :cond_10

    const-string/jumbo v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bZ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/u;

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/security/authcenter/ui/login/u;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bG:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bZ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/k;

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/security/authcenter/ui/login/k;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bj:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bZ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method a([B)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    array-length v1, p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->setCheckCodeImg(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->stopAnimation()V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/login/l;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/l;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected b(Z)V
    .locals 0

    return-void
.end method

.method protected c(Z)V
    .locals 0

    return-void
.end method

.method protected final d(Z)V
    .locals 5

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/n;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/n;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedNotifyCallBack()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->callback(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedNotifyCallBack()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/login/o;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/o;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;Lcom/alipay/mobile/framework/service/ext/security/GestureService;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V

    const-wide/16 v0, 0x32

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method f()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->d:Lcom/alipay/mobile/framework/service/common/SchemeService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/j;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->setCheckCallback(Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;)V

    return-void
.end method

.method protected final j()V
    .locals 5

    new-instance v1, Lcom/alipay/mobile/login/bean/b;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/b;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/login/bean/b;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->logonId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkCodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0xaf1

    if-ne p1, v0, :cond_0

    const v0, 0x13265e4

    if-eq p2, v0, :cond_1

    :cond_0
    const/16 v0, 0xaf2

    if-ne p1, v0, :cond_3

    const v0, 0x1326648

    if-ne p2, v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->j()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_3
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    const/16 v0, 0x111

    if-ne p2, v0, :cond_2

    new-instance v1, Lcom/alipay/mobile/login/bean/b;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/b;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/login/bean/b;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->logonId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/login/bean/b;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkCodeId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkSafe:Z

    const-string/jumbo v1, "securityId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->securityId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/alipay/mobile/security/authcenter/b/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->q:Lcom/alipay/mobile/security/authcenter/b/a/a;

    :cond_0
    return-void
.end method
