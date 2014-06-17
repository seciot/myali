.class final Lcom/taobao/security/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/taobao/security/d;


# direct methods
.method private constructor <init>(Lcom/taobao/security/d;)V
    .locals 1

    iput-object p1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/d$a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/security/d$a;->b:I

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->a(Lcom/taobao/security/d;)I

    move-result v0

    iput v0, p0, Lcom/taobao/security/d$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/security/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/security/d$a;-><init>(Lcom/taobao/security/d;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->a(Lcom/taobao/security/d;)I

    move-result v0

    iget v1, p0, Lcom/taobao/security/d$a;->c:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized hasNext()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d$a;->a:I

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-virtual {v1}, Lcom/taobao/security/d;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v0, v1, :cond_0

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

.method public final declared-synchronized next()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/security/d$a;->a()V

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->b(Lcom/taobao/security/d;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->c(Lcom/taobao/security/d;)I

    move-result v1

    iget v2, p0, Lcom/taobao/security/d$a;->a:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v2}, Lcom/taobao/security/d;->d(Lcom/taobao/security/d;)I

    move-result v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/taobao/security/d$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/taobao/security/d$a;->a:I

    iput v1, p0, Lcom/taobao/security/d$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized remove()V
    .locals 6

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/security/d$a;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/taobao/security/d$a;->a()V

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->c(Lcom/taobao/security/d;)I

    move-result v0

    iget v1, p0, Lcom/taobao/security/d$a;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->d(Lcom/taobao/security/d;)I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->c(Lcom/taobao/security/d;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->b(Lcom/taobao/security/d;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->c(Lcom/taobao/security/d;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v2}, Lcom/taobao/security/d;->b(Lcom/taobao/security/d;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v3}, Lcom/taobao/security/d;->c(Lcom/taobao/security/d;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v4}, Lcom/taobao/security/d;->d(Lcom/taobao/security/d;)I

    move-result v4

    rem-int/2addr v3, v4

    iget v4, p0, Lcom/taobao/security/d$a;->b:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->c(Lcom/taobao/security/d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v2}, Lcom/taobao/security/d;->d(Lcom/taobao/security/d;)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/taobao/security/d;->a(Lcom/taobao/security/d;I)I

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->e(Lcom/taobao/security/d;)I

    :goto_0
    iget v0, p0, Lcom/taobao/security/d$a;->b:I

    iget v1, p0, Lcom/taobao/security/d$a;->a:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/taobao/security/d$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/security/d$a;->a:I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/security/d$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->b(Lcom/taobao/security/d;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v3}, Lcom/taobao/security/d;->b(Lcom/taobao/security/d;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v4}, Lcom/taobao/security/d;->f(Lcom/taobao/security/d;)I

    move-result v4

    iget v5, p0, Lcom/taobao/security/d$a;->b:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    iget-object v1, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v1}, Lcom/taobao/security/d;->g(Lcom/taobao/security/d;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v2}, Lcom/taobao/security/d;->d(Lcom/taobao/security/d;)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/taobao/security/d;->b(Lcom/taobao/security/d;I)I

    iget-object v0, p0, Lcom/taobao/security/d$a;->d:Lcom/taobao/security/d;

    invoke-static {v0}, Lcom/taobao/security/d;->e(Lcom/taobao/security/d;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
