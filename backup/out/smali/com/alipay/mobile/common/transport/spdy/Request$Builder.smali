.class public Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/lang/String;

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->b:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->url(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->b:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->url(Ljava/net/URL;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->a:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Lcom/alipay/mobile/common/transport/spdy/Request$Body;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/alipay/mobile/common/transport/spdy/Request;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transport/spdy/Request;-><init>(Lcom/alipay/mobile/common/transport/spdy/Request$Builder;Lcom/alipay/mobile/common/transport/spdy/Request$1;)V

    return-object v0
.end method

.method public get()Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 2

    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 2

    const-string/jumbo v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->c:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/Request$Body;

    return-object p0
.end method

.method public post(Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 1

    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 1

    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/Request$Body;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url(Ljava/net/URL;)Lcom/alipay/mobile/common/transport/spdy/Request$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Builder;->a:Ljava/net/URL;

    return-object p0
.end method
