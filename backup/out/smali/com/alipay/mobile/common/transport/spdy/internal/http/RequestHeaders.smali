.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->d:I

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->e:I

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->a:Ljava/net/URI;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_d

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser$CacheControlHandler;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v2, "no-cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->c:Z

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->q:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->p:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->h:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->j:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u521d\u59cbhttpEngine,\u8bbe\u7f6eUA\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->k:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->m:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->o:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->c:Z

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->d:I

    return p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->e:I

    return p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->f:I

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->g:Z

    return p1
.end method


# virtual methods
.method public final addCookies(Ljava/util/Map;)V
    .locals 8

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    if-lez v3, :cond_3

    const-string/jumbo v2, "; "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final getAcceptEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfModifiedSince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfNoneMatch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAgeSeconds()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->d:I

    return v0
.end method

.method public final getMaxStaleSeconds()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->e:I

    return v0
.end method

.method public final getMinFreshSeconds()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->f:I

    return v0
.end method

.method public final getProxyAuthorization()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->a:Ljava/net/URI;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final hasAuthorization()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->h:Z

    return v0
.end method

.method public final hasConditions()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasConnectionClose()Z
    .locals 2

    const-string/jumbo v0, "close"

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isChunked()Z
    .locals 2

    const-string/jumbo v0, "chunked"

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isNoCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->c:Z

    return v0
.end method

.method public final isOnlyIfCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->g:Z

    return v0
.end method

.method public final removeContentLength()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J

    :cond_0
    return-void
.end method

.method public final setAcceptEncoding(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->n:Ljava/lang/String;

    return-void
.end method

.method public final setChunked()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Transfer-Encoding"

    const-string/jumbo v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "chunked"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->j:Ljava/lang/String;

    return-void
.end method

.method public final setConnection(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->m:Ljava/lang/String;

    return-void
.end method

.method public final setContentLength(J)V
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->i:J

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->o:Ljava/lang/String;

    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->l:Ljava/lang/String;

    return-void
.end method

.method public final setIfModifiedSince(Ljava/util/Date;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->p:Ljava/lang/String;

    return-void
.end method

.method public final setIfNoneMatch(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->q:Ljava/lang/String;

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->b:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->k:Ljava/lang/String;

    return-void
.end method
