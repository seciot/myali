.class public Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/LoginService;


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;-><init>()V

    const-string/jumbo v0, "LoginServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 10

    const/16 v8, 0x3e8

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginService;

    :try_start_0
    invoke-interface {v0, p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginService;->login(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;)Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-ne v8, v1, :cond_a

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.alipay.mobile.about.UPDATE_CLIENT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "_updateInfo"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :goto_0
    :try_start_3
    const-string/jumbo v1, "taobao"

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setTaoBaoUserId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setLoginTime(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_4
    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getBarcodePayToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setBarcodePayToken(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setCurrentProductVersion(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setDownloadURL(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setExistNewVersion(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setExtern_token(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setIsCertified(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeImg(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginFlag(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginServerTime(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginToken(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMobileNo(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTaobaoSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTaobaoSid(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "securityPolicyRes"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setSecurityPolicyRes(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getSecurityPolicyRes()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    if-nez v6, :cond_3

    :try_start_6
    const-class v6, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->isNeedH5()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_3
    return-object p1

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_7
    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    invoke-direct {p0, v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;)Z

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginLogonId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginUserId(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_4
    if-eqz p1, :cond_5

    :try_start_9
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    if-ne v8, v0, :cond_5

    const-string/jumbo v0, "withpwd"

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v5

    :try_start_a
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.alipay.security.login"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "logonId"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "userId"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "com.alipay.security.withPwd"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    move v0, v3

    :goto_5
    const-string/jumbo v2, "switchaccount"

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v0, Lcom/alipay/mobile/login/constants/LastLoginStatus;->ISSWITCHACCOUNT:Z

    sput-boolean v5, Lcom/alipay/mobile/login/constants/LastLoginStatus;->ISWITHPWD:Z

    invoke-virtual {v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    const/4 v0, 0x1

    :try_start_b
    sput-boolean v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->LOGIN_REALSTATE:Z

    :cond_5
    if-eqz v1, :cond_6

    const-string/jumbo v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v9, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_7
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/service/e;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/security/authcenter/service/e;-><init>(Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    const-string/jumbo v0, "[0-9]{11}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "****"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u767b\u5f55\u8fd4\u56de\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, ""

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeImg(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginId(Ljava/lang/String;)V

    :goto_8
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6e05\u9664\u672c\u5730\u7528\u6236\u514d\u767b\u72c0\u614b logonId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserAutoLoginFlagByLogonId(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    goto/16 :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getPaySysInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->queryTaobaoUserList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->deleteTaobaoUserInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_1
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userLoginResult.getUserId()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setMobileNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setIsCertified(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isWirelessUser()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setWirelessUser(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isBindCard()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setBindCard(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "realNameStatus"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setRealNamed(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getHeadImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLoginTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTaobaoSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setTaobaoSid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setExtern_token(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLoginToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;
    .locals 4

    new-instance v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    invoke-direct {v1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setWalletTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getClientKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setWalletClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setProductVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setScreenHigh(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setScreenWidth(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setChannels(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setOsVersion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setVimsi(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSourceId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMac(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setCellId(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getAccuracy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLocation(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method

.method private d()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static e()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "walletTid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->genTid(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public autoLogin(Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1, v6}, Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;->AutoLoginResult(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;->AutoLoginResult(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v6

    goto :goto_1
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "without"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz p2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v3}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "withpwd"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "wireless"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "withmobilepwd"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo v3, "taobao"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, p4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCode(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCodeId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "withpwd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "withmobilepwd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v3, Lcom/taobao/securityjni/SecurityCheck;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/securityjni/SecurityCheck;-><init>(Landroid/content/ContextWrapper;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->getSafeRSATS()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientDigest(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSecTS(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "apdid"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    :cond_6
    invoke-direct {p0, v1, v2, v8}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "wireless"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8d26\u6237\u767b\u5f55\u7c7b\u578b"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v2, p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_9
    invoke-virtual {v2, p4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginCheckCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public loginWithPWD(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 8

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->logonId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string/jumbo v3, "withpwd"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "wireless"

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "withmobilepwd"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "taobao"

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCode(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCodeId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "withpwd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "withmobilepwd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v3, Lcom/taobao/securityjni/SecurityCheck;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/securityjni/SecurityCheck;-><init>(Landroid/content/ContextWrapper;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->getSafeRSATS()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientDigest(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSecTS(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;

    invoke-direct {v3}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;-><init>()V

    iget-boolean v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkSafe:Z

    invoke-virtual {v3, v4}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->setNeedCheck(Z)V

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->securityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->setSecurityId(Ljava/lang/String;)V

    const-string/jumbo v4, "securityPolicyParam"

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "apdid"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v3, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "wireless"

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8d26\u6237\u8d26\u5bc6\u767b\u5f55\u7c7b\u578b"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_9
    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginCheckCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public taobaoSsoTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "token\u767b\u5f55\u670d\u52a1\u5f00\u59cb,\u8bf7\u6c42\u53c2\u6570:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSsoChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSourceId(Ljava/lang/String;)V

    const-string/jumbo v0, "taobao"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    const-string/jumbo v0, "withtoken"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;

    invoke-direct {v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setSsoToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getTaobaoDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setTimeStamp(J)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSecSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setTokenSign(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->isAutoImport()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssoByTaoSync"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setLoginSource(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "withtoken"

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "token\u767b\u5f55\u5b8c\u6210\uff0c\u767b\u5f55\u7ed3\u679c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ssoByTaoAndroid"

    goto :goto_1
.end method

.method public wapTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wap token\u767b\u5f55\u670d\u52a1\u5f00\u59cb,\u8bf7\u6c42\u53c2\u6570:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;->getInnerToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v1

    const-string/jumbo v2, "withinnertoken"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "withinnertoken"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "token\u767b\u5f55\u5b8c\u6210\uff0c\u767b\u5f55\u7ed3\u679c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
