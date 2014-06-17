.class final Lcom/alipay/mobile/security/authcenter/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->parseTaobaoSsoToken(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$600(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getParsedNickName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getParsedSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$200()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$600(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->syncTimeStamp()J

    move-result-wide v2

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->createSecSign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;

    invoke-direct {v8}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;-><init>()V

    invoke-virtual {v8, v7}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setNickName(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setSsoToken(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setTaobaoDeviceId(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setTimeStamp(J)V

    invoke-virtual {v8, v6}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setSecSign(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setImei(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$100(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$700(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$200()Ljava/lang/String;

    invoke-interface {v1, v0, v8}, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;->importAccountByTaobaoToken(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$200()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->getUserListFromResult(Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;)Ljava/util/List;

    move-result-object v0

    #setter for: Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->e:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$802(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/b;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$600(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V

    return-void

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$200()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u901a\u8fc7\u6dd8\u5b9dsso token\u5411\u670d\u52a1\u5668\u8bf7\u6c42\u83b7\u53d6\u7528\u6237\u5217\u8868\u8fd4\u56de\u5f02\u5e38  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
