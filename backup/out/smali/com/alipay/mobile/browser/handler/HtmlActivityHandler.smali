.class public Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
.super Ljava/lang/Object;


# static fields
.field public static final BROKER:I = 0x1

.field public static final CONTINUE:I


# instance fields
.field private transient a:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private transient b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private transient c:Lcom/alipay/mobile/browser/HtmlActivityV2;

.field private transient d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

.field private e:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterInit()V
    .locals 0

    return-void
.end method

.method public beforeInit()V
    .locals 0

    return-void
.end method

.method public callBackProccessRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public callBackWhenURLLoding(Lcom/alipay/mobile/browser/HtmlActivityV2;Landroid/webkit/WebView;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doLogin()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->rpcAuth()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logonId=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sessionId=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "autoLogin=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "taobaoSid=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getTaobaoSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "extern_token=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Login Finish. userInfo=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    goto :goto_0
.end method

.method public getCookieDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->getCookieDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlActivityV2()Lcom/alipay/mobile/browser/HtmlActivityV2;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->c:Lcom/alipay/mobile/browser/HtmlActivityV2;

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public getRequest()Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    return-object v0
.end method

.method public getRequestCookies()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->getCookieMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->callBackProccessRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmApp()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public init()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->beforeInit()V

    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->c:Lcom/alipay/mobile/browser/HtmlActivityV2;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->afterInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    return v0
.end method

.method public isNeedLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->isNeedLogin()Z

    move-result v0

    return v0
.end method

.method public setHtmlActivityV2(Lcom/alipay/mobile/browser/HtmlActivityV2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->c:Lcom/alipay/mobile/browser/HtmlActivityV2;

    return-void
.end method

.method public setRequest(Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->d:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    return-void
.end method

.method public setmApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-void
.end method
