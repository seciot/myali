.class public Lcom/alipay/mobile/common/image/ImageLoader;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field private b:Lcom/alipay/mobile/common/cache/mem/MemCache;

.field private c:Lcom/alipay/mobile/common/task/TaskManager;

.field private d:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/cache/disk/DiskCache;Lcom/alipay/mobile/common/cache/mem/MemCache;Lcom/alipay/mobile/common/task/TaskManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Lcom/alipay/mobile/common/transport/http/HttpManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-object p3, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    iput-object p4, p0, Lcom/alipay/mobile/common/image/ImageLoader;->c:Lcom/alipay/mobile/common/task/TaskManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->f:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_0
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, p1

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDencity()I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p0

    check-cast v1, [B

    array-length v1, v1

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, [B

    check-cast p0, [B

    array-length v2, p0

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->open()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    invoke-static {v0, p5, p6}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3, v0}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getCode()Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/image/ImageLoader;Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/mem/MemCache;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/disk/DiskCache;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->removeListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->getListenerSize()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 9

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p4, p3, v0}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-wide/high16 v0, 0x3ff0

    invoke-interface {p4, p3, v0, v1}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v8, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v8, p3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;-><init>(Lcom/alipay/mobile/common/image/ImageLoader;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader;->f:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/common/image/ImageLoader;->c:Lcom/alipay/mobile/common/task/TaskManager;

    new-instance v0, Lcom/alipay/mobile/common/image/ImageLoader$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader$1;-><init>(Lcom/alipay/mobile/common/image/ImageLoader;Lcom/alipay/mobile/common/image/ImageLoaderListener;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/common/task/TaskManager;->serialExecute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
