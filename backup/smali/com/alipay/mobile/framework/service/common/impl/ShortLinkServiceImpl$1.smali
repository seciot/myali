.class Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;

.field final synthetic val$callback:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

.field final synthetic val$facade:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$originalLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;Landroid/os/Handler;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$originalLink:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$facade:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$originalLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;->setOriginalUrl(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$facade:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;->createShortLink(Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;)Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const-string/jumbo v1, "res is null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
