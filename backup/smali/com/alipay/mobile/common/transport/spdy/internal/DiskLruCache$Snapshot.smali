.class public final Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/io/InputStream;

.field private final d:[J

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->b:J

    iput-object p5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->c:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->c:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final edit()Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->b:J

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Ljava/lang/String;J)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$1600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;J)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->c:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLength(I)J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->d:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
