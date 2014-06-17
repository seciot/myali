.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;
.super Ljava/io/InputStream;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->c:I
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;->val$in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;->access$020(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/NameValueBlockReader;I)I

    return v0
.end method
