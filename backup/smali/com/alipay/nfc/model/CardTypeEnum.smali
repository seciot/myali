.class public final enum Lcom/alipay/nfc/model/CardTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/nfc/model/CardTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/nfc/model/CardTypeEnum;

.field public static final enum CreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

.field public static final enum DebitCard:Lcom/alipay/nfc/model/CardTypeEnum;

.field public static final enum LeavedCard:Lcom/alipay/nfc/model/CardTypeEnum;

.field public static final enum QuasiCreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

.field public static final enum TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

.field public static final enum UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;


# instance fields
.field private final code:Ljava/lang/String;

.field private final memo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/nfc/model/CardTypeEnum;

    const-string/jumbo v1, "CreditCard"

    const-string/jumbo v2, "CREDIT_CARD"

    const-string/jumbo v3, "\u4fe1\u7528\u5361"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/nfc/model/CardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->CreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    new-instance v0, Lcom/alipay/nfc/model/CardTypeEnum;

    const-string/jumbo v1, "DebitCard"

    const-string/jumbo v2, "DEBIT_CARD"

    const-string/jumbo v3, "\u501f\u8bb0\u5361"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/nfc/model/CardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->DebitCard:Lcom/alipay/nfc/model/CardTypeEnum;

    new-instance v0, Lcom/alipay/nfc/model/CardTypeEnum;

    const-string/jumbo v1, "QuasiCreditCard"

    const-string/jumbo v2, "QUASI_CREDIT_CARD"

    const-string/jumbo v3, "\u51c6\u8d37\u8bb0\u5361"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/nfc/model/CardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->QuasiCreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    new-instance v0, Lcom/alipay/nfc/model/CardTypeEnum;

    const-string/jumbo v1, "TransferCard"

    const-string/jumbo v2, "TRANS_CARD"

    const-string/jumbo v3, "\u4ea4\u901a\u5361"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/nfc/model/CardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

    new-instance v0, Lcom/alipay/nfc/model/CardTypeEnum;

    const-string/jumbo v1, "UnknowCard"

    const-string/jumbo v2, "UNKNOWN_CARD"

    const-string/jumbo v3, "\u672a\u77e5\u7c7b\u578b"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/nfc/model/CardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    new-instance v0, Lcom/alipay/nfc/model/CardTypeEnum;

    const-string/jumbo v1, "LeavedCard"

    const/4 v2, 0x5

    const-string/jumbo v3, "LEAVED_CARD"

    const-string/jumbo v4, "\u5361\u5df2\u79bb\u5f00"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/nfc/model/CardTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->LeavedCard:Lcom/alipay/nfc/model/CardTypeEnum;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/nfc/model/CardTypeEnum;

    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->CreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->DebitCard:Lcom/alipay/nfc/model/CardTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->QuasiCreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/nfc/model/CardTypeEnum;->LeavedCard:Lcom/alipay/nfc/model/CardTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->$VALUES:[Lcom/alipay/nfc/model/CardTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/nfc/model/CardTypeEnum;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/nfc/model/CardTypeEnum;->memo:Ljava/lang/String;

    return-void
.end method

.method public static getCardTypeEnumByCode(Ljava/lang/String;)Lcom/alipay/nfc/model/CardTypeEnum;
    .locals 5

    invoke-static {}, Lcom/alipay/nfc/model/CardTypeEnum;->values()[Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/alipay/nfc/model/CardTypeEnum;->code:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/nfc/model/CardTypeEnum;
    .locals 1

    const-class v0, Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/nfc/model/CardTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/nfc/model/CardTypeEnum;
    .locals 1

    sget-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->$VALUES:[Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v0}, [Lcom/alipay/nfc/model/CardTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/nfc/model/CardTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/nfc/model/CardTypeEnum;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/nfc/model/CardTypeEnum;->memo:Ljava/lang/String;

    return-object v0
.end method
