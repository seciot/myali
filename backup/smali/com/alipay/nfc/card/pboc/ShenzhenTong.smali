.class final Lcom/alipay/nfc/card/pboc/ShenzhenTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# static fields
.field private static final t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->t:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x5at
        0x54t
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->p:Ljava/lang/String;

    const-string/jumbo v0, "\u6df1\u5733\u901a\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->o:Ljava/lang/String;

    return-void
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ShenzhenTong;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->c:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->t:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    invoke-virtual {v0, v2}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->a(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->a(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    new-array v1, v4, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->a([Ljava/util/ArrayList;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
