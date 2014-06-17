.class public final Lcom/alipay/pushsdk/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/b/e;->a:Landroid/content/Context;

    new-instance v0, Lcom/alipay/pushsdk/b/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b/f;-><init>(Lcom/alipay/pushsdk/b/e;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/b/e;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/b/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/b/e;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/b/e;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/pushsdk/b/g;

    invoke-direct {v1, p0, p1}, Lcom/alipay/pushsdk/b/g;-><init>(Lcom/alipay/pushsdk/b/e;Lcom/alipay/pushsdk/b/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
