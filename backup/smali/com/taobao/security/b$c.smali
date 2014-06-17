.class final Lcom/taobao/security/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/security/Filter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/security/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Lcom/taobao/security/c;Lcom/taobao/security/g;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/taobao/security/c;->c:[I

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p1, Lcom/taobao/security/c;->c:[I

    array-length v2, v2

    if-ne v2, v1, :cond_3

    iget-object v2, p1, Lcom/taobao/security/c;->c:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_3
    iget-object v2, p1, Lcom/taobao/security/c;->c:[I

    array-length v3, v2

    if-gtz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v3, 0x25

    new-array v3, v3, [Ljava/lang/String;

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_5

    aget v4, v2, v0

    aget v5, v2, v0

    invoke-virtual {p2, v5}, Lcom/taobao/security/g;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v3}, Lcom/taobao/security/g;->a([Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method
