.class public Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;
.super Landroid/taobao/service/appdevice/net/async/AbsHttpClient;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AbsHttpClient;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/service/appdevice/net/async/RequestParams;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/service/appdevice/net/async/RequestParams;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Landroid/taobao/service/appdevice/net/async/RequestParams;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Landroid/taobao/service/appdevice/net/async/RequestParams;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    .locals 7

    invoke-virtual {p0, p2, p4}, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Landroid/taobao/service/appdevice/net/async/RequestParams;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {v4, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    invoke-virtual {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    invoke-virtual {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v3

    iget-object v6, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;-><init>(Landroid/content/Context;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method
