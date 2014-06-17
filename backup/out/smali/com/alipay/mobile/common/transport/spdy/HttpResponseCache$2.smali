.class final Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$2;
.super Ljava/io/FilterInputStream;


# instance fields
.field final synthetic val$snapshot:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)V
    .locals 0

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$2;->val$snapshot:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$2;->val$snapshot:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->close()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method
