.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method length()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
