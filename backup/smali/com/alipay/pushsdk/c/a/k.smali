.class public Lcom/alipay/pushsdk/c/a/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/c/a/k;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/c/a/k;->a:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/c/a/k;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/c/a/k;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/pushsdk/c/a/k;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/pushsdk/c/a/k;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/c/a/k;)V
    .locals 4

    invoke-static {}, Lcom/alipay/pushsdk/c/a/h;->b()Lcom/alipay/pushsdk/c/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/c/a/k;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/pushsdk/c/a/k;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/pushsdk/c/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/pushsdk/c/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/c/a/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "put writeLog into thread pool"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/k;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/pushsdk/c/a/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/pushsdk/c/a/l;-><init>(Lcom/alipay/pushsdk/c/a/k;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
