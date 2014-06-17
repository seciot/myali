.class Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->val$originalLink:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;->onFinish(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
