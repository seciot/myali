.class Lcom/alipay/mobile/common/transport/spdy/Failure;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/Request;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->access$000(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;)Lcom/alipay/mobile/common/transport/spdy/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Failure;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->b:Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->access$100(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Failure;->b:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;Lcom/alipay/mobile/common/transport/spdy/Failure$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/Failure;-><init>(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;)V

    return-void
.end method


# virtual methods
.method public exception()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Failure;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public request()Lcom/alipay/mobile/common/transport/spdy/Request;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Failure;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    return-object v0
.end method
