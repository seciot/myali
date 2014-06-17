.class public Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/security/accountmanager/a/b;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_userlistmanager"
.end annotation


# static fields
.field private static final k:Lcom/alipay/mobile/common/logging/Logger;


# instance fields
.field final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_userListView"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/security/accountmanager/b/a;

.field protected d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected e:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

.field protected f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected i:Lcom/alipay/mobile/security/accountmanager/a/a;

.field j:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AccountManagerActivity"

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->k:Lcom/alipay/mobile/common/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "AccountManagerActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->l:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private c(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string/jumbo v1, "source_accountSelectAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000008"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 12
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->dismissProgressDialog()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    check-cast p2, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->getUserIds()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->isLoginWithoutPwd()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getUserType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "wirelessUser"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    :goto_3
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setWirelessUser(Z)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\uff0c\u5934\u50cf\u4e0d\u4e3a\u7a7a\uff0c\u66f4\u65b0\u6570\u636e\u5e93\u5934\u50cf\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_4
    if-nez v1, :cond_1

    new-instance v5, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    invoke-virtual {v2}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "wirelessUser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    :goto_5
    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setWirelessUser(Z)V

    if-eqz v10, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0c\u5934\u50cf\u4e0d\u4e3a\u7a7a\uff0c\u66f4\u65b0\u6570\u636e\u5e93\u5934\u50cf\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    move v5, v4

    goto/16 :goto_2

    :cond_7
    move v5, v4

    goto/16 :goto_3

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_a

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->cleanLocalAccountByUserId(Ljava/lang/String;)Z

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u66f4\u65b0\u672c\u5730\u6570\u636e\u5e93\u6210\u529f logouId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->al:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bZ:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/security/accountmanager/ui/g;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/security/accountmanager/ui/g;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V

    move-object v1, p0

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_1
    check-cast p2, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    if-eqz p2, :cond_10

    const-string/jumbo v1, "200"

    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "401"

    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->l:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->clearLoginUserInfo()V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->l:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.alipay.security.cleanAccount"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginLogonId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginUserId(Ljava/lang/String;)V

    :try_start_3
    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->l:I

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->l:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :goto_8
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, p0

    move-object v9, v6

    move-object v10, v6

    move-object v11, v6

    invoke-virtual/range {v5 .. v11}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_7

    :cond_11
    move-object v1, v6

    goto :goto_8

    :cond_12
    move v1, v4

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->dismissProgressDialog()V

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    if-ne v1, v0, :cond_0

    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->dismissProgressDialog()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    const-string/jumbo v1, "set"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/e;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/f;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->i:Lcom/alipay/mobile/security/accountmanager/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->i:Lcom/alipay/mobile/security/accountmanager/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/accountmanager/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upDateUI.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c:Lcom/alipay/mobile/security/accountmanager/b/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/accountmanager/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected b()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

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

.method protected b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->cleanLocalAccountByUserId(Ljava/lang/String;)Z

    return-void
.end method

.method protected c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->i:Lcom/alipay/mobile/security/accountmanager/a/a;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->i:Lcom/alipay/mobile/security/accountmanager/a/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->dismissProgressDialog()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->dismissProgressDialog()V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->k:Lcom/alipay/mobile/common/logging/Logger;

    const-string/jumbo v1, "AccountManagerActivity \u9500\u6bc1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/Logger;->info(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/accountmanager/a/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/security/accountmanager/a/b;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->i:Lcom/alipay/mobile/security/accountmanager/a/a;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->j:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/b/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->j:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/b/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c:Lcom/alipay/mobile/security/accountmanager/b/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aY:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cK:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getFooterViewsCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c:Lcom/alipay/mobile/security/accountmanager/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/c;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->c()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "source_login"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v3, v0, :cond_3

    const-string/jumbo v0, "set"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
