.class public abstract Lcom/ut/a/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected buffer:[B

.field protected eof:Z

.field protected final l:B

.field private final m:I

.field private final n:I

.field protected final o:I

.field private final p:I

.field protected pos:I

.field private q:I

.field protected r:I

.field protected s:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/ut/a/a/a/a/b;->l:B

    iput p1, p0, Lcom/ut/a/a/a/a/b;->m:I

    iput p2, p0, Lcom/ut/a/a/a/a/b;->n:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lcom/ut/a/a/a/a/b;->o:I

    iput p4, p0, Lcom/ut/a/a/a/a/b;->p:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ut/a/a/a/a/b;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    iput v3, p0, Lcom/ut/a/a/a/a/b;->pos:I

    iput v3, p0, Lcom/ut/a/a/a/a/b;->q:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    iget-object v2, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    iput v1, p0, Lcom/ut/a/a/a/a/b;->pos:I

    iput v1, p0, Lcom/ut/a/a/a/a/b;->q:I

    iput v1, p0, Lcom/ut/a/a/a/a/b;->r:I

    iput v1, p0, Lcom/ut/a/a/a/a/b;->s:I

    iput-boolean v1, p0, Lcom/ut/a/a/a/a/b;->eof:Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method protected a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/ut/a/a/a/a/b;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ut/a/a/a/a/b;->b()V

    :cond_1
    return-void
.end method

.method abstract a([BII)V
.end method

.method protected abstract a(B)Z
.end method

.method available()I
    .locals 2

    iget-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ut/a/a/a/a/b;->pos:I

    iget v1, p0, Lcom/ut/a/a/a/a/b;->q:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b([BII)I
    .locals 3

    iget-object v0, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ut/a/a/a/a/b;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    iget v2, p0, Lcom/ut/a/a/a/a/b;->q:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ut/a/a/a/a/b;->q:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ut/a/a/a/a/b;->q:I

    iget v1, p0, Lcom/ut/a/a/a/a/b;->q:I

    iget v2, p0, Lcom/ut/a/a/a/a/b;->pos:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ut/a/a/a/a/b;->buffer:[B

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/ut/a/a/a/a/b;->eof:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)[B
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ut/a/a/a/a/b;->reset()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/ut/a/a/a/a/b;->a([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lcom/ut/a/a/a/a/b;->a([BII)V

    iget v0, p0, Lcom/ut/a/a/a/a/b;->pos:I

    iget v1, p0, Lcom/ut/a/a/a/a/b;->q:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/ut/a/a/a/a/b;->b([BII)I

    goto :goto_0
.end method

.method protected c([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/ut/a/a/a/a/b;->a(B)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public d([B)J
    .locals 6

    array-length v0, p1

    iget v1, p0, Lcom/ut/a/a/a/a/b;->m:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/ut/a/a/a/a/b;->m:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/ut/a/a/a/a/b;->n:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/ut/a/a/a/a/b;->o:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/ut/a/a/a/a/b;->o:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/ut/a/a/a/a/b;->o:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/ut/a/a/a/a/b;->p:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method
