.class public Lcom/alipay/mobile/security/devicemanage/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private c:Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/mobile/security/devicemanage/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/a/a;->a:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/a/a;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/a/a;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/a/a;->c:Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceReq;->logonId:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iput-object p2, v1, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/a/a;->c:Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;->queryAuthedDeviceList(Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceReq;)Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/account/device/DelAuthedDeviceReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/account/device/DelAuthedDeviceReq;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DelAuthedDeviceReq;->logonId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DelAuthedDeviceReq;->tids:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/a/a;->c:Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;->delAuthedDevicesByIds(Lcom/alipay/mobilesecurity/core/model/account/device/DelAuthedDeviceReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method
