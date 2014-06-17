.class public Lcom/alipay/nfc/card/pboc/UnknownCard;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# direct methods
.method public constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "UNKNOWN_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/UnknownCard;->p:Ljava/lang/String;

    const-string/jumbo v0, "?"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/UnknownCard;->o:Ljava/lang/String;

    return-void
.end method
