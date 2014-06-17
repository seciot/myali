.class public final Lcom/alipay/android/widget/security/service/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;

    invoke-interface {v0, p1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;->checkCertifyByMsp(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;->logonId:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;->name:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;->certNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameFacade;->doRealName(Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/account/UserReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/account/UserReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobilesecurity/core/model/account/UserReq;->logonId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;->queryRealNameCertifyStatus(Lcom/alipay/mobilesecurity/core/model/account/UserReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyResult;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/ACertifyFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/ACertifyFacade;

    invoke-interface {v0, p1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/ACertifyFacade;->submitACertifyInfo(Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;

    invoke-interface {v0, p1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;->verifyCertifyByMsp(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    move-result-object v0

    return-object v0
.end method
