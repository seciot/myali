.class final Lcom/alipay/mobile/common/transport/spdy/Request;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private final d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;

.field private final e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->a:Ljava/net/URL;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->access$000(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->a:Ljava/net/URL;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->b:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->access$100(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->b:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->access$200(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->access$300(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Lcom/alipay/mobile/common/transport/spdy/Request$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->e:Ljava/lang/Object;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->access$400(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->e:Ljava/lang/Object;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->access$400(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->e:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;Lcom/alipay/mobile/common/transport/spdy/Request$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/Request;-><init>(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public final body()Lcom/alipay/mobile/common/transport/spdy/Request$Body;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headerCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    return v0
.end method

.method public final headerName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headerNames()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->names()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final headerValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final tag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final url()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->a:Ljava/net/URL;

    return-object v0
.end method

.method public final urlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
