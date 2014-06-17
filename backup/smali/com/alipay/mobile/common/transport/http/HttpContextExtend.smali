.class public Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
.super Ljava/lang/Object;


# static fields
.field public static MAX_HTTP_REQUEST_COUNT_PER_BATCH:I

.field private static a:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;


# instance fields
.field private b:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->MAX_HTTP_REQUEST_COUNT_PER_BATCH:I

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->b:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->b:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->open()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->b:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    return-object v0
.end method
