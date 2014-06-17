.class Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->access$2302(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->access$2302(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->access$2302(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->access$2302(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
