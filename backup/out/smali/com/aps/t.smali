.class final Lcom/aps/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:S

.field protected g:B

.field protected h:I

.field protected i:S

.field protected j:B

.field protected k:Ljava/util/ArrayList;

.field private l:B


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/aps/t;->l:B

    iput v1, p0, Lcom/aps/t;->a:I

    iput v1, p0, Lcom/aps/t;->b:I

    iput v1, p0, Lcom/aps/t;->c:I

    iput v1, p0, Lcom/aps/t;->d:I

    iput v1, p0, Lcom/aps/t;->e:I

    iput-short v1, p0, Lcom/aps/t;->f:S

    iput-byte v1, p0, Lcom/aps/t;->g:B

    iput v1, p0, Lcom/aps/t;->h:I

    iput-short v1, p0, Lcom/aps/t;->i:S

    iput-byte v1, p0, Lcom/aps/t;->j:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/t;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-byte v2, p0, Lcom/aps/t;->l:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, p0, Lcom/aps/t;->a:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Lcom/aps/t;->b:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Lcom/aps/t;->c:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Lcom/aps/t;->d:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Lcom/aps/t;->e:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v2, p0, Lcom/aps/t;->f:S

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v2, p0, Lcom/aps/t;->g:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, p0, Lcom/aps/t;->h:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v2, p0, Lcom/aps/t;->i:S

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v2, p0, Lcom/aps/t;->j:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v2, v0

    :goto_1
    iget-byte v0, p0, Lcom/aps/t;->j:B

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/aps/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/ay;

    invoke-virtual {v0, p1}, Lcom/aps/ay;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method
