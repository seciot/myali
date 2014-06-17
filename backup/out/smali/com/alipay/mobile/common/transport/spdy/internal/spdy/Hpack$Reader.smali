.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/io/DataInputStream;

.field private final c:Ljava/util/BitSet;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private f:J

.field private g:J


# direct methods
.method constructor <init>(Ljava/io/DataInputStream;Z)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a:J

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->b:Ljava/io/DataInputStream;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack;->INITIAL_SERVER_TO_CLIENT_HEADER_TABLE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    const-wide/16 v0, 0x518

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack;->INITIAL_CLIENT_TO_SERVER_HEADER_TABLE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    const-wide/16 v0, 0x4ee

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    goto :goto_0
.end method

.method private a()I
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)V
    .locals 9

    const-wide/16 v7, 0x1000

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->length()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->length()I

    move-result v0

    sub-int v0, v2, v0

    move v2, v0

    :cond_0
    int-to-long v3, v2

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->a:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->b:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-lez v0, :cond_2

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->length()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p1, v1

    :goto_2
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->f:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public emitReferenceSet()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->b:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAndReset()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public readHeaders(I)V
    .locals 8

    const/16 v7, 0xff

    const/16 v6, 0x60

    const/16 v5, 0x40

    const/16 v4, 0x1f

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xe0

    if-ne v1, v6, :cond_3

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)V

    goto :goto_0

    :cond_4
    and-int/lit16 v1, v0, 0xe0

    if-ne v1, v5, :cond_5

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)V

    goto/16 :goto_0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a()I

    move-result v1

    invoke-virtual {p0, v1, v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit16 v1, v0, 0xc0

    if-nez v1, :cond_7

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a()I

    move-result v1

    invoke-virtual {p0, v1, v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method readInt(II)I
    .locals 3

    and-int v0, p1, p2

    if-ge v0, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->a()I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    new-array v1, v0, [B

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->g:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Reader;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
