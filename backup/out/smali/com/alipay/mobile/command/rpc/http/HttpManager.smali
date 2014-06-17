.class public Lcom/alipay/mobile/command/rpc/http/HttpManager;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/alipay/mobile/command/rpc/http/HttpManager;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

.field private c:J

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;

    invoke-direct {v0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->g:Lcom/alipay/mobile/command/rpc/http/HttpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "httpManager"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo v0, "android"

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    new-instance v0, Lcom/alipay/mobile/command/rpc/http/HttpManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/command/rpc/http/HttpManager$1;-><init>(Lcom/alipay/mobile/command/rpc/http/HttpManager;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->g:Lcom/alipay/mobile/command/rpc/http/HttpManager;

    return-object v0
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    return-void
.end method

.method public addDataSize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    return-void
.end method

.method public addSocketTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iput-object v1, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->close()V

    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    return-void
.end method

.method public execute(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/Request;",
            "Lcom/alipay/mobile/command/rpc/http/TransportCallback;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/command/model/Response;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "HttpManager: Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All connect time = %d ms, All socket time = %d ms, All request times = %d times"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getAverageSpeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getAverageConnectTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, p2}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory;->buildTask(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 4

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    iget v2, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getAverageSpeed()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    div-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHttpClient()Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    return-object v0
.end method
