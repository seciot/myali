.class public final enum Lcom/alipay/android/lib/plusin/protocol/ProtocolType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

.field public static final enum b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

.field private static final synthetic c:[Lcom/alipay/android/lib/plusin/protocol/ProtocolType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    const-string/jumbo v1, "Msp"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    new-instance v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    const-string/jumbo v1, "Mini"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    sget-object v1, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->c:[Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/lib/plusin/protocol/ProtocolType;
    .locals 1

    const-class v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/lib/plusin/protocol/ProtocolType;
    .locals 1

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->c:[Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-virtual {v0}, [Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    return-object v0
.end method
