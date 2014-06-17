.class final Lcom/alipay/mobile/common/transport/spdy/Response;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/Request;

.field private final b:I

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private final d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;

.field private final e:Lcom/alipay/mobile/common/transport/spdy/Response;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->a:Lcom/alipay/mobile/common/transport/spdy/Request;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->access$000(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->b:I
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->access$100(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->b:I

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->access$200(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->access$300(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/Response$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/Response;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->access$400(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)Lcom/alipay/mobile/common/transport/spdy/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->e:Lcom/alipay/mobile/common/transport/spdy/Response;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;Lcom/alipay/mobile/common/transport/spdy/Response$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/Response;-><init>(Lcom/alipay/mobile/common/transport/spdy/Response$Builder;)V

    return-void
.end method


# virtual methods
.method public final body()Lcom/alipay/mobile/common/transport/spdy/Response$Body;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->d:Lcom/alipay/mobile/common/transport/spdy/Response$Body;

    return-object v0
.end method

.method public final code()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->b:I

    return v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/spdy/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public final headerCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    return v0
.end method

.method public final headerName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headerNames()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->names()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final headerValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final redirectedBy()Lcom/alipay/mobile/common/transport/spdy/Response;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->e:Lcom/alipay/mobile/common/transport/spdy/Response;

    return-object v0
.end method

.method public final request()Lcom/alipay/mobile/common/transport/spdy/Request;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Response;->a:Lcom/alipay/mobile/common/transport/spdy/Request;

    return-object v0
.end method
