.class Lcom/alipay/mobile/common/transport/spdy/internal/Platform$Java6;
.super Lcom/alipay/mobile/common/transport/spdy/internal/Platform;


# instance fields
.field private final a:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$Java6;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/spdy/internal/Platform$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$Java6;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public getMtu(Ljava/net/Socket;)I
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/Platform$Java6;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
