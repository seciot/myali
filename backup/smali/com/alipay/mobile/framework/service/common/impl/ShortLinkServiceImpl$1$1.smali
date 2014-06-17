.class Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

.field final synthetic val$res:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->val$res:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iget-object v1, v0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->val$res:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;->getResultStatus()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$originalLink:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->val$res:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    invoke-virtual {v3}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;->getShortUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;->onFinish(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
