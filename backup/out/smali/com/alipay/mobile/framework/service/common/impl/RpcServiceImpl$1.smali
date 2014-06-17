.class Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/Config;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Transport;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
