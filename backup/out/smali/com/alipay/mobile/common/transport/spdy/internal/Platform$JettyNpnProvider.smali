.class Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->b:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-nez p3, :cond_0

    sget-object p3, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_0
    const-string/jumbo v3, "supports"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v3, "unsupported"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_2

    iput-boolean v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->b:Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "protocols"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, p3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->a:Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "selectProtocol"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v3, Ljava/lang/String;

    if-ne v3, v2, :cond_5

    array-length v2, p3

    if-ne v2, v5, :cond_5

    aget-object v2, p3, v4

    if-eqz v2, :cond_4

    aget-object v2, p3, v4

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "protocolSelected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, p3

    if-ne v0, v5, :cond_6

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$JettyNpnProvider;->c:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
