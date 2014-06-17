.class public final enum Lcom/alipay/mobile/common/transport/spdy/ResponseSource;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

.field public static final enum CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

.field public static final enum NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/spdy/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    const-string/jumbo v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    const-string/jumbo v1, "CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->a:[Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/ResponseSource;
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/spdy/ResponseSource;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->a:[Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    return-object v0
.end method


# virtual methods
.method public final requiresConnection()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
