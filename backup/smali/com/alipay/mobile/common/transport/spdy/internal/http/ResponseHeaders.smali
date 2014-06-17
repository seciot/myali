.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;
.super Ljava/lang/Object;


# static fields
.field static final RESPONSE_SOURCE:Ljava/lang/String;

.field static final SELECTED_TRANSPORT:Ljava/lang/String;

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/net/URI;

.field private final d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Date;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/util/Set;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Selected-Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->SELECTED_TRANSPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->m:I

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->q:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->u:I

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->c:Ljava/net/URI;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;)V

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_f

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser$CacheControlHandler;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->g:Ljava/util/Date;

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->p:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v2, "no-cache"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->j:Z

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->q:I

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    :cond_8
    const-string/jumbo v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->s:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->t:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->u:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iput-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->v:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    sget-object v5, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->h:J

    goto/16 :goto_1

    :cond_e
    sget-object v5, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->i:J

    goto/16 :goto_1

    :cond_f
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->j:Z

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->k:Z

    return p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I

    return p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->m:I

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->n:Z

    return p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->o:Z

    return p1
.end method


# virtual methods
.method public final chooseResponseSource(JLcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)Lcom/alipay/mobile/common/transport/spdy/ResponseSource;
    .locals 11

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->isCacheable(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->isNoCache()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->i:J

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    iget v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->q:I

    if-eq v4, v10, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->q:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_3
    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->i:J

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->h:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->i:J

    sub-long v6, p1, v6

    add-long/2addr v0, v4

    add-long/2addr v6, v0

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I

    if-eq v0, v10, :cond_a

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v4

    if-eq v4, v10, :cond_5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_5
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v4

    if-eq v4, v10, :cond_16

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_3
    iget-boolean v8, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->o:Z

    if-nez v8, :cond_6

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v8

    if-eq v8, v10, :cond_6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_6
    iget-boolean v8, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->j:Z

    if-nez v8, :cond_11

    add-long v8, v6, v4

    add-long/2addr v2, v0

    cmp-long v2, v8, v2

    if-gez v2, :cond_11

    add-long v2, v6, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Warning"

    const-string/jumbo v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v6, v0

    if-lez v0, :cond_8

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I

    if-ne v0, v10, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->g:Ljava/util/Date;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Warning"

    const-string/jumbo v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    goto/16 :goto_0

    :cond_9
    move-wide v0, v2

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->g:Ljava/util/Date;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_5
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->g:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    move-wide v0, v2

    goto/16 :goto_2

    :cond_b
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->i:J

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->c:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_6
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    goto/16 :goto_2

    :cond_d
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->h:J

    goto :goto_6

    :cond_e
    move-wide v0, v2

    goto/16 :goto_2

    :cond_f
    move-wide v0, v2

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    :cond_12
    :goto_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->p:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->p:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_7

    :cond_15
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    goto/16 :goto_0

    :cond_16
    move-wide v4, v2

    goto/16 :goto_3
.end method

.method public final combine(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;)Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->c:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    return-object v0
.end method

.method public final getConnection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->u:I

    return v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpires()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->g:Ljava/util/Date;

    return-object v0
.end method

.method public final getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method public final getLastModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    return-object v0
.end method

.method public final getMaxAgeSeconds()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I

    return v0
.end method

.method public final getSMaxAgeSeconds()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->m:I

    return v0
.end method

.method public final getServedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->e:Ljava/util/Date;

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->c:Ljava/net/URI;

    return-object v0
.end method

.method public final getVaryFields()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    return-object v0
.end method

.method public final hasConnectionClose()Z
    .locals 2

    const-string/jumbo v0, "close"

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hasVaryAll()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCacheable(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->hasAuthorization()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->n:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->o:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->k:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isChunked()Z
    .locals 2

    const-string/jumbo v0, "chunked"

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isContentEncodingGzip()Z
    .locals 2

    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isMustRevalidate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->o:Z

    return v0
.end method

.method public final isNoCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->j:Z

    return v0
.end method

.method public final isNoStore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->k:Z

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->n:Z

    return v0
.end method

.method public final setLocalTimestamps(JJ)V
    .locals 3

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->h:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->i:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->b:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setResponseSource(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setTransport(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->SELECTED_TRANSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stripContentEncoding()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    return-void
.end method

.method public final stripContentLength()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->u:I

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    return-void
.end method

.method public final validate(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
