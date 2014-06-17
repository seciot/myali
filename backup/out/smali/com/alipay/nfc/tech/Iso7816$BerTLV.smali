.class public final Lcom/alipay/nfc/tech/Iso7816$BerTLV;
.super Lcom/alipay/nfc/tech/Iso7816;


# instance fields
.field public final c:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public final d:Lcom/alipay/nfc/tech/Iso7816$BerL;

.field public final e:Lcom/alipay/nfc/tech/Iso7816$BerV;


# direct methods
.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$BerT;Lcom/alipay/nfc/tech/Iso7816$BerL;Lcom/alipay/nfc/tech/Iso7816$BerV;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/nfc/tech/Iso7816;-><init>()V

    iput-object p1, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->c:Lcom/alipay/nfc/tech/Iso7816$BerT;

    iput-object p2, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->d:Lcom/alipay/nfc/tech/Iso7816$BerL;

    iput-object p3, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->e:Lcom/alipay/nfc/tech/Iso7816$BerV;

    return-void
.end method

.method public static a(Lcom/alipay/nfc/tech/Iso7816;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->b([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    return-object v0
.end method

.method private static b([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 5

    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerT;->c([BI)Lcom/alipay/nfc/tech/Iso7816$BerT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->a()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerL;->d([BI)Lcom/alipay/nfc/tech/Iso7816$BerL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$BerL;->a()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$BerL;->c()I

    move-result v3

    invoke-static {p0, v1, v3}, Lcom/alipay/nfc/tech/Iso7816$BerV;->a([BII)Lcom/alipay/nfc/tech/Iso7816$BerV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$BerV;->a()I

    move-result v4

    add-int/2addr v1, v4

    new-instance v4, Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    invoke-direct {v4, v0, v2, v3}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;-><init>(Lcom/alipay/nfc/tech/Iso7816$BerT;Lcom/alipay/nfc/tech/Iso7816$BerL;Lcom/alipay/nfc/tech/Iso7816$BerV;)V

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->b:[B

    return-object v4
.end method


# virtual methods
.method public final a(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 6

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->c:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->e:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerV;->b()[B

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->a([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->b([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->b([BI)I

    move-result v3

    add-int v4, v0, v3

    invoke-static {v1, v4}, Lcom/alipay/nfc/tech/Iso7816$BerL;->b([BI)I

    move-result v4

    add-int v5, v0, v3

    invoke-static {v1, v5}, Lcom/alipay/nfc/tech/Iso7816$BerL;->c([BI)I

    move-result v5

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
