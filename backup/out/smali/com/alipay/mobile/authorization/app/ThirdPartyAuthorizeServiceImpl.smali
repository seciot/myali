.class public Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
.source "ThirdPartyAuthorizeServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Ljava/lang/Object;

.field private d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
    .locals 2
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    invoke-direct {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getAgreementDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setAgreementDesc(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getAgreementUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setAgreementUrl(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setAuthCode(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->isSignStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setSignStatus(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getResultStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setResultCode(I)V

    .line 115
    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 190
    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8fdb\u5165\u9501"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u9501\u88ab\u91ca\u653e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;

    const/4 v1, 0x1

    const-string/jumbo v2, "\u7528\u6237\u540d\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u7528\u6237\u540d\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public authSign(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p2}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-direct {v1}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "protocol_url"

    invoke-virtual {p3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAgreementUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v2, "authType"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "10000112"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    const-string/jumbo v1, "authorization_lock"

    invoke-static {v0, v1}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onUserCancel()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V

    goto :goto_0

    .line 142
    :cond_1
    :try_start_1
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public authSignFromDeskTop(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-direct {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    .line 161
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-direct {v0, p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "fromDesktop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    const-string/jumbo v1, "protocol_url"

    invoke-virtual {p3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAgreementUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    const-string/jumbo v1, "authorization_lock"

    invoke-static {v0, v1}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onUserCancel()V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAuthStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setAppId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p2}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setUserId(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "Android"

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setPlatform(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p3}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setAuthType(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->getAuthStatus(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v0

    return-object v0
.end method

.method public getAuthStatusValidTid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;-><init>()V

    .line 78
    invoke-virtual {v1, p2}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setAppId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setUserId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p3}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setTid(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "Android"

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setPlatform(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->getAuthStatusValidTid(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getResultStatus()I

    move-result v2

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_0

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setTid(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->getAuthStatusValidTid(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;

    move-result-object v0

    .line 95
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v0

    return-object v0
.end method

.method public isSigned(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUnlockAuthorizationApp(ZZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a(Z)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b(Z)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a(Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 46
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 48
    const-class v2, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    .line 49
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 51
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    return-void
.end method
