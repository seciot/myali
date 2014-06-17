.class Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;
.super Lcom/alipay/mobile/common/transport/spdy/Response$Body;


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private final b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/Response$Body;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;->a:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;->b:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;->a:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
