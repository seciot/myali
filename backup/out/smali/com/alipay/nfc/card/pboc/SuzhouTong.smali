.class public Lcom/alipay/nfc/card/pboc/SuzhouTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# static fields
.field private static final t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->t:[B

    return-void

    :array_0
    .array-data 0x1
        0x53t
        0x55t
        0x58t
        0x49t
        0x4et
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "\u82cf\u5dde\u5e02\u6c11\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->f:Ljava/lang/String;

    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->p:Ljava/lang/String;

    const-string/jumbo v0, "\u82cf\u5dde\u5e02\u6c11\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->o:Ljava/lang/String;

    return-void
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/SuzhouTong;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->t:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v0, Lcom/alipay/nfc/card/pboc/SuzhouTong;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/SuzhouTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    invoke-virtual {v0, v2}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->a(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    invoke-virtual {v0, v1, v4, v4}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->a(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    new-array v1, v5, [Ljava/util/ArrayList;

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->a([Ljava/util/ArrayList;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x20t
        0x0t
        0x0t
        0x3t
        0x12t
        0x34t
        0x56t
    .end array-data
.end method
