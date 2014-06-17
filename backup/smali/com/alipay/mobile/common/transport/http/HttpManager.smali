.class public Lcom/alipay/mobile/common/transport/http/HttpManager;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpManager"

.field private static final i:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Lcom/alipay/mobile/common/utils/SerialExecutor;

.field private c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private d:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager$3;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager$3;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpManager;->i:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "networkaddress.cache.ttl"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpManager$2;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v0, Lcom/alipay/mobile/common/utils/SerialExecutor;

    const-string/jumbo v1, "Http"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/utils/SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->b:Lcom/alipay/mobile/common/utils/SerialExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v7, Lcom/alipay/mobile/common/transport/http/HttpManager;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->f:J

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->h:I

    return-void
.end method

.method public addDataSize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->e:J

    return-void
.end method

.method public addSocketTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->g:J

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->b:Lcom/alipay/mobile/common/utils/SerialExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->b:Lcom/alipay/mobile/common/utils/SerialExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/utils/SerialExecutor;->stop()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->b:Lcom/alipay/mobile/common/utils/SerialExecutor;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->close()V

    :cond_2
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-void
.end method

.method public dumpPerf()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HttpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All connect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getAverageSpeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getAverageConnectTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 3

    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "request send error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->dumpPerf()Ljava/lang/String;

    :cond_1
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HttpManager schedule request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpManager$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/alipay/mobile/common/transport/http/HttpManager$1;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method protected generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 4

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->h:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->f:J

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->h:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getAverageSpeed()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->g:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->e:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->g:J

    div-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0
.end method

.method public getsHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    return-object v0
.end method

.method public setsHttpClient(Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    return-void
.end method
