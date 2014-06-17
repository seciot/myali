.class public final Lcom/taobao/security/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Queue;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iput v2, p0, Lcom/taobao/security/d;->b:I

    iput v1, p0, Lcom/taobao/security/d;->c:I

    iget v0, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/taobao/security/d;->d:I

    iput v1, p0, Lcom/taobao/security/d;->e:I

    return-void
.end method

.method static synthetic a(Lcom/taobao/security/d;)I
    .locals 1

    iget v0, p0, Lcom/taobao/security/d;->f:I

    return v0
.end method

.method static synthetic a(Lcom/taobao/security/d;I)I
    .locals 0

    iput p1, p0, Lcom/taobao/security/d;->c:I

    return p1
.end method

.method static synthetic b(Lcom/taobao/security/d;I)I
    .locals 0

    iput p1, p0, Lcom/taobao/security/d;->d:I

    return p1
.end method

.method static synthetic b(Lcom/taobao/security/d;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/taobao/security/d;)I
    .locals 1

    iget v0, p0, Lcom/taobao/security/d;->c:I

    return v0
.end method

.method static synthetic d(Lcom/taobao/security/d;)I
    .locals 1

    iget v0, p0, Lcom/taobao/security/d;->b:I

    return v0
.end method

.method static synthetic e(Lcom/taobao/security/d;)I
    .locals 2

    iget v0, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I

    return v0
.end method

.method static synthetic f(Lcom/taobao/security/d;)I
    .locals 1

    iget v0, p0, Lcom/taobao/security/d;->e:I

    return v0
.end method

.method static synthetic g(Lcom/taobao/security/d;)I
    .locals 1

    iget v0, p0, Lcom/taobao/security/d;->d:I

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/taobao/security/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/taobao/security/d;->b:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/taobao/security/d;->e:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/taobao/security/d;->e:I

    sub-int v2, v1, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/taobao/security/d;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v1, p1, [Ljava/lang/Object;

    iget v2, p0, Lcom/taobao/security/d;->e:I

    :goto_2
    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/taobao/security/d;->poll()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/taobao/security/d;->d:I

    iput v2, p0, Lcom/taobao/security/d;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/d;->f:I

    iput p1, p0, Lcom/taobao/security/d;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()[B
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v0, p0, Lcom/taobao/security/d;->e:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, p0, Lcom/taobao/security/d;->c:I

    move v2, v1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/taobao/security/d;->e:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v4, v0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v4, v0

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    array-length v5, v0

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    :try_start_2
    iget v1, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized add(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/security/d;->f:I

    iget v0, p0, Lcom/taobao/security/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/security/d;->d:I

    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/security/d;->d:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/taobao/security/d;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/taobao/security/d;->b:I

    :goto_0
    iput v0, p0, Lcom/taobao/security/d;->e:I

    iget v0, p0, Lcom/taobao/security/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/taobao/security/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/taobao/security/d;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/security/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/taobao/security/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/security/d;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/security/d;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/d;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/d;->c:I

    iget v0, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/security/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lcom/taobao/security/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/taobao/security/d;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized element()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->e:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/security/d;->c:I

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/taobao/security/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/security/d$a;-><init>(Lcom/taobao/security/d;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized offer(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/security/d;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized peek()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/security/d;->c:I

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized poll()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/security/d;->f:I

    iget v0, p0, Lcom/taobao/security/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/security/d;->c:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/d;->c:I

    iget v1, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized remove()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/security/d;->f:I

    iget v0, p0, Lcom/taobao/security/d;->e:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/security/d;->c:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/d;->c:I

    iget v1, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/taobao/security/d;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/taobao/security/d;->f:I

    if-nez p1, :cond_2

    iget v2, p0, Lcom/taobao/security/d;->c:I

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/taobao/security/d;->e:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_1

    iget v1, p0, Lcom/taobao/security/d;->c:I

    if-lt v2, v1, :cond_0

    iget-object v1, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/taobao/security/d;->c:I

    iget-object v4, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v5, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v5, v6

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/d;->c:I

    iget v1, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v6, p0, Lcom/taobao/security/d;->e:I

    sub-int v3, v6, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/taobao/security/d;->d:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/d;->d:I

    iget v1, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    :try_start_2
    iget v4, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v2, v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/taobao/security/d;->c:I

    move v3, v1

    :goto_2
    iget v4, p0, Lcom/taobao/security/d;->e:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v1, p0, Lcom/taobao/security/d;->c:I

    if-lt v2, v1, :cond_3

    iget-object v1, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/taobao/security/d;->c:I

    iget-object v4, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v5, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v5, v6

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/taobao/security/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/d;->c:I

    iget v1, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    iget v6, p0, Lcom/taobao/security/d;->e:I

    sub-int v3, v6, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/taobao/security/d;->d:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/d;->d:I

    iget v1, p0, Lcom/taobao/security/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/security/d;->e:I

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method public final declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/security/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/taobao/security/d;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/taobao/security/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/security/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/taobao/security/d;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/taobao/security/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/taobao/security/d;->e:I

    return v0
.end method

.method public final declared-synchronized toArray()[Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d;->e:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v0, p0, Lcom/taobao/security/d;->c:I

    :goto_0
    iget v3, p0, Lcom/taobao/security/d;->e:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    iget v2, p0, Lcom/taobao/security/d;->e:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v2, p0, Lcom/taobao/security/d;->e:I

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/taobao/security/d;->c:I

    :goto_0
    iget v3, p0, Lcom/taobao/security/d;->e:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v2, v3

    goto :goto_0

    :cond_0
    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/taobao/security/d;->c:I

    :goto_2
    iget v2, p0, Lcom/taobao/security/d;->e:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v2

    goto :goto_2

    :cond_2
    array-length v0, p1

    iget v1, p0, Lcom/taobao/security/d;->e:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/taobao/security/d;->e:I

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    iget v0, p0, Lcom/taobao/security/d;->c:I

    :goto_0
    iget v3, p0, Lcom/taobao/security/d;->e:I

    if-ge v1, v3, :cond_1

    if-eqz v1, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/taobao/security/d;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/taobao/security/d;->b:I

    rem-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
