.class final enum Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum HTTP_20_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

.field public static final enum SPDY_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

.field public static final enum SPDY_REPLY:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    const-string/jumbo v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    const-string/jumbo v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    const-string/jumbo v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    const-string/jumbo v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->a:[Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->a:[Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public final failIfHeadersAbsent()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final failIfHeadersPresent()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final failIfStreamAbsent()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final failIfStreamPresent()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
