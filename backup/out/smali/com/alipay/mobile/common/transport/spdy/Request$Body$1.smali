.class final Lcom/alipay/mobile/common/transport/spdy/Request$Body$1;
.super Lcom/alipay/mobile/common/transport/spdy/Request$Body;


# instance fields
.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/alipay/mobile/common/transport/spdy/MediaType;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/MediaType;[B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Body$1;->val$contentType:Lcom/alipay/mobile/common/transport/spdy/MediaType;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Body$1;->val$content:[B

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/Request$Body;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Body$1;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lcom/alipay/mobile/common/transport/spdy/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Body$1;->val$contentType:Lcom/alipay/mobile/common/transport/spdy/MediaType;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Request$Body$1;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
