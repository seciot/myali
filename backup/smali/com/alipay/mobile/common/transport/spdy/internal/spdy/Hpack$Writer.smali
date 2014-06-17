.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public writeHeaders(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    const/16 v3, 0x60

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeInt(III)V
    .locals 3

    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    sub-int v0, p1, p2

    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->writeInt(III)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$Writer;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
