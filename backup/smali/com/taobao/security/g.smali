.class public final Lcom/taobao/security/g;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x25

    iget-object v0, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-le v1, p1, :cond_0

    iget-object v0, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/security/g;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
