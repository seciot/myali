.class public Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

.field private static volatile d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static createSecSign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p6}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p6}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v3, "SSO"

    invoke-virtual {v2, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "DEV"

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "TIME"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "IMEI"

    invoke-virtual {v2, v3, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "IMSI"

    invoke-virtual {v2, v3, p5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x1

    iput v4, v3, Lcom/taobao/securityjni/tools/DataContext;->category:I

    const/4 v4, 0x0

    iput v4, v3, Lcom/taobao/securityjni/tools/DataContext;->type:I

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v3, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u751f\u6210\u5b89\u5168\u7b7e\u540d,\u5165\u53c2,ssoToken:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",taobaoDeviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",timeStamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",imei:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Lcom/taobao/securityjni/SecretUtil;

    invoke-direct {v4, v0}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v4, v2, v3}, Lcom/taobao/securityjni/SecretUtil;->getExternalSign(Ljava/util/LinkedHashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6210\u5b89\u5168\u7b7e\u540d\u6210\u529f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "\u751f\u6210\u5b89\u5168\u7b7e\u540d\u5931\u8d25,ssoToken:%s,taobaoDeviceId:%s,timeStamp:%s,imei:%s,imsi:%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static doHttpRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    sput-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http\u8bf7\u6c42\u51fa\u73b0\u5f02\u5e38:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "12501616"

    return-object v0
.end method

.method public static getParsedNickName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getParsedSsoToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "plugins_lib"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->d:Z

    goto :goto_0
.end method

.method public static isTaobaoSsoLogin(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->isTaobaoSsoLogin(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaobaoSsoLogin(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipays://platformapi/startApp?appId=20000034"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {p1, v1}, Landroid/taobao/service/appdevice/util/MTopUtils;->setMTopUrlType(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->getInstance()Landroid/taobao/service/appdevice/AppDeviceTokenManager;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Landroid/taobao/service/appdevice/IAppDeviceTokenManager;->setDeviceUTDID(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "701339@zhifubao_android_7.1.2"

    invoke-interface {v2, p1, v0, v3}, Landroid/taobao/service/appdevice/IAppDeviceTokenManager;->setAppTTID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5c1d\u8bd5\u751f\u6210\u6dd8\u5b9ddeviceId\uff0c\u5165\u53c2,utdid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mTopUrlType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",ttid:701339@zhifubao_android_7.1.2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2, p1, v0}, Landroid/taobao/service/appdevice/IAppDeviceTokenManager;->getAppDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6\u6dd8\u5b9ddeviceId\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseTaobaoSsoToken(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    sput-boolean v4, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/android/ssologin/a;

    new-instance v1, Lcom/alipay/mobilesecurity/taobao/sso/util/a;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/a;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/taobao/android/ssologin/a;-><init>(Lcom/taobao/android/ssologin/b;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/taobao/android/ssologin/a;->a()Lcom/taobao/android/ssologin/c;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    const-string/jumbo v0, "sso token\u89e3\u6790\u5b8c\u6210,sso token:%s,nickName:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    sget-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u89e3\u6790\u6dd8\u7cfbsso token\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u89e3\u6790\u6dd8\u7cfbsso token\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sput-boolean v4, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z

    goto :goto_1
.end method

.method public static syncTimeStamp()J
    .locals 5

    :try_start_0
    const-string/jumbo v0, "http://api.wapa.taobao.com/rest/api2.do?v=*&api=mtop.common.getTimestamp"

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "ret"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SUCCESS::\u63a5\u53e3\u8c03\u7528\u6210\u529f"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static writeSsoToken(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/android/ssologin/a;

    new-instance v2, Lcom/alipay/mobilesecurity/taobao/sso/util/b;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/b;-><init>()V

    invoke-direct {v0, v2, p2}, Lcom/taobao/android/ssologin/a;-><init>(Lcom/taobao/android/ssologin/b;Landroid/content/Context;)V

    invoke-virtual {v0, p1, p0}, Lcom/taobao/android/ssologin/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "\u5199\u5165sso token\uff0c\u7ed3\u679c\u4e3a:%s,nickName:%s,ssoToken:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
