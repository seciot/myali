.class public final Lcom/alipay/mobile/security/authcenter/ui/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field private b:Lcom/alipay/mobile/framework/app/MicroApplication;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/security/authcenter/a/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->d:Lcom/alipay/mobile/security/authcenter/a/a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/alipay/mobile/login/bean/LoginInfo;Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V
    .locals 6

    new-instance v2, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;

    invoke-direct {v2}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-direct {v5}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->b(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/z;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/z;-><init>(Lcom/alipay/mobile/security/authcenter/ui/y;)V

    invoke-virtual {v2, v0, v3, p2, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment_;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/y;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

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

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/y;)Lcom/alipay/mobile/security/authcenter/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->d:Lcom/alipay/mobile/security/authcenter/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/ui/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/alipay/mobile/login/bean/LoginInfo;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/login/bean/LoginInfo;)V
    .locals 6

    const/16 v5, 0x1001

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->g()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "W"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "Q"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/login/bean/LoginInfo;Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/y;->b(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "T"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/y;->c(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "TAOBAO_Q"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "NOT_EXIST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/y;->c(Lcom/alipay/mobile/login/bean/LoginInfo;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v3, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/login/bean/LoginInfo;Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "registInfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment_;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0
.end method

.method public final b(Lcom/alipay/mobile/login/bean/LoginInfo;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/aa;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/aa;-><init>(Lcom/alipay/mobile/security/authcenter/ui/y;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment_;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/y;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
