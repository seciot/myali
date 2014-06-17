.class public Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/spdy/Request;

.field private b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;)Lcom/alipay/mobile/common/transport/spdy/Request;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;)Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->b:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/common/transport/spdy/Failure;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Failure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transport/spdy/Failure;-><init>(Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;Lcom/alipay/mobile/common/transport/spdy/Failure$1;)V

    return-object v0
.end method

.method public exception(Ljava/lang/Throwable;)Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->b:Ljava/lang/Throwable;

    return-object p0
.end method

.method public request(Lcom/alipay/mobile/common/transport/spdy/Request;)Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    return-object p0
.end method
