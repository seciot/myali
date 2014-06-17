.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Comparator;


# instance fields
.field private final b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->f:I

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->d:Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    iget v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->f:I

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->f:I

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static fromBytes(Ljava/io/InputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 3

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->readHeaders(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    return-object v0
.end method

.method public static fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static fromNameValueBlock(Ljava/util/List;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 11

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected name value block: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v8, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v8}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    move v7, v5

    move-object v4, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v7, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v3, v5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    :cond_1
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, ":status"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v10, v4

    move-object v4, v3

    move v3, v10

    goto :goto_1

    :cond_2
    const-string/jumbo v9, ":version"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_3
    iget-object v9, v8, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v2, :cond_7

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':version\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    return-object v8
.end method

.method public static readHeaders(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V
    .locals 2

    :goto_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fieldname == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addLine(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addSpdyRequestHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ":method"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ":scheme"

    invoke-virtual {p0, v0, p5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ":path"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ":version"

    invoke-virtual {p0, v0, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ":host"

    invoke-virtual {p0, v0, p4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getAll(Ljava/util/Set;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    .locals 5

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final getFieldName(I)Ljava/lang/String;
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getHttpMinorVersion()I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->f:I

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue(I)Ljava/lang/String;
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final names()Ljava/util/Set;
    .locals 3

    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final removeAll(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestLine(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->c:Ljava/lang/String;

    return-void
.end method

.method public final setStatusLine(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x20

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v2, 0xc

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "statusLine is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "HTTP/1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_3

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected status line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_4

    if-le v1, v3, :cond_5

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected status line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v2, 0x9

    const/16 v3, 0xc

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v0, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->g:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->f:I

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->d:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->e:I

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected status line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final toBytes()[B
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Z)Ljava/util/Map;
    .locals 7

    const/4 v6, 0x0

    new-instance v4, Ljava/util/TreeMap;

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->a:Ljava/util/Comparator;

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final toNameValueBlock()Ljava/util/List;
    .locals 8

    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "connection"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "host"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "keep-alive"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "proxy-connection"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "transfer-encoding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "\u0000"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    return-object v5
.end method

.method public final values(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
