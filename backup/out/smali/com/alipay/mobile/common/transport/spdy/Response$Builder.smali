.class public Lcom/alipay/mobile/common/transport/spdy/Response$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/Request;

.field private final b:I

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;

.field private e:Lcom/alipay/mobile/common/transport/spdy/Response;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Request;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "code <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    iput p2, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->b:I

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/Request;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->b:I

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/Response$Body;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/Response;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/Response;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public body(Lcom/alipay/mobile/common/transport/spdy/Response$Body;)Lcom/alipay/mobile/common/transport/spdy/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;

    return-object p0
.end method

.method public build()Lcom/alipay/mobile/common/transport/spdy/Response;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Response has no request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Response has no code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transport/spdy/Response;-><init>(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;Lcom/alipay/mobile/common/transport/spdy/Response$1;)V

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public redirectedBy(Lcom/alipay/mobile/common/transport/spdy/Response;)Lcom/alipay/mobile/common/transport/spdy/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/Response;

    return-object p0
.end method
