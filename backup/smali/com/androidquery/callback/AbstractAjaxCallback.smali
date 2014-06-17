.class public abstract Lcom/androidquery/callback/AbstractAjaxCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static D:Lcom/androidquery/callback/Transformer;

.field private static final F:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static J:Ljava/util/concurrent/ExecutorService;

.field private static K:Lorg/apache/http/conn/scheme/SocketFactory;

.field private static L:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static M:I

.field private static a:I

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Z

.field private static e:Z


# instance fields
.field private A:Lorg/apache/http/client/methods/HttpUriRequest;

.field private B:Z

.field private C:I

.field private E:Lorg/apache/http/HttpHost;

.field private G:Z

.field private H:Z

.field private I:Z

.field private N:Z

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected fileCache:Z

.field private g:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected memCache:Z

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/androidquery/callback/Transformer;

.field private q:I

.field private r:Ljava/io/File;

.field protected result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private s:Ljava/io/File;

.field protected status:Lcom/androidquery/callback/AjaxStatus;

.field private t:Lcom/androidquery/auth/AccountHandle;

.field private u:Z

.field private v:I

.field private w:J

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x7530

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->b:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->c:I

    sput-boolean v3, Lcom/androidquery/callback/AbstractAjaxCallback;->d:Z

    sput-boolean v3, Lcom/androidquery/callback/AbstractAjaxCallback;->e:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/androidquery/callback/AjaxStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->F:[Ljava/lang/Class;

    const/16 v0, 0xc8

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->M:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->q:I

    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->v:I

    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->B:Z

    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->C:I

    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    return-object v0
.end method

.method private afterWork()V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->memPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->clear()V

    return-void
.end method

.method private backgroundWork()V
    .locals 1

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileWork()V

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreWork()V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->networkWork()V

    :cond_2
    return-void
.end method

.method public static cancel()V
    .locals 1

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearTasks()V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->g:Ljava/lang/ref/Reference;

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->j:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->A:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->p:Lcom/androidquery/callback/Transformer;

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->y:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->j:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/androidquery/util/Progress;

    invoke-direct {v0, v1}, Lcom/androidquery/util/Progress;-><init>(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1, p2, p3, v0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private correctEncoding([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p3, v0}, Lcom/androidquery/callback/AjaxStatus;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "parsing header"

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v0, "utf-8"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "parsing needed"

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    const-string/jumbo v0, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "correction needed"

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private datastoreWork()V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    :cond_0
    return-void
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2, v0, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->c:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static extractParams(Landroid/net/Uri;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v3, v0

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v6, v5

    if-ne v6, v8, :cond_1

    aget-object v5, v5, v1

    const-string/jumbo v6, ""

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static extractUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private filePut()V
    .locals 4

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2}, Lcom/androidquery/callback/AjaxStatus;->getInvalid()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fileWork()V
    .locals 5

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->r:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    :cond_0
    return-void
.end method

.method public static getActiveCount()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getCacheUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/AccountHandle;->getCacheUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->L:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/androidquery/callback/AbstractAjaxCallback;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "creating http client"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->a:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->a:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v0, "alipay"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v3, Lcom/androidquery/net/http/EasySSLSocketFactory;

    invoke-direct {v3, v0}, Lcom/androidquery/net/http/EasySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v0}, Lcom/androidquery/net/http/EasySSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v0, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->L:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_1
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->L:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getLastStatus()I
    .locals 1

    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->M:I

    return v0
.end method

.method private getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0, p1}, Lcom/androidquery/auth/AccountHandle;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getPreFile()Ljava/io/File;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isStreamingContent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->s:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->s:Ljava/io/File;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->r:Ljava/io/File;

    :cond_3
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private httpDelete(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "get"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "User-Agent"

    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_1
    sget-boolean v2, Lcom/androidquery/callback/AbstractAjaxCallback;->d:Z

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    const-string/jumbo v2, "Accept-Encoding"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "Cookie"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V

    :cond_5
    invoke-static {}, Lcom/androidquery/callback/AbstractAjaxCallback;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->E:Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_6

    const-string/jumbo v3, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->E:Lorg/apache/http/HttpHost;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->v:I

    if-lez v3, :cond_7

    const-string/jumbo v3, "http.connection.timeout"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v3, "http.socket.timeout"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_7
    new-instance v11, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v11}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string/jumbo v4, "http.cookie-store"

    invoke-interface {v11, v4, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->A:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->N:Z

    if-eqz v3, :cond_9

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Aborted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v2

    :goto_1
    const/4 v7, 0x0

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    const/4 v5, 0x0

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    const/4 v6, 0x0

    const/16 v2, 0xc8

    if-lt v12, v2, :cond_a

    const/16 v2, 0x12c

    if-lt v12, v2, :cond_d

    :cond_a
    const/4 v2, 0x0

    if-eqz v14, :cond_13

    :try_start_1
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/androidquery/callback/AbstractAjaxCallback;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v8

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string/jumbo v5, "error"

    invoke-static {v5, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v2, v6

    move-object v5, v3

    move-object/from16 v3, p2

    :goto_3
    const-string/jumbo v6, "response"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_b

    array-length v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/androidquery/callback/AjaxStatus;->file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/androidquery/callback/AjaxStatus;->context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxStatus;->headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;

    return-void

    :catch_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->E:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_c

    const-string/jumbo v3, "proxy failed, retrying without proxy"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    const-string/jumbo v3, "http.route.default-proxy"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_1

    :cond_c
    throw v3

    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v2, v6

    move-object/from16 v3, p2

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_5
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v2

    :cond_d
    const-string/jumbo v2, "http.target_host"

    invoke-interface {v11, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    const-string/jumbo v3, "http.request"

    invoke-interface {v11, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x20

    const/high16 v3, 0x1

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v15

    long-to-int v6, v15

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v3, 0x0

    const/4 v9, 0x0

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getPreFile()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_f

    new-instance v2, Lcom/androidquery/util/PredefinedBAOS;

    invoke-direct {v2, v15}, Lcom/androidquery/util/PredefinedBAOS;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v3, v2

    :goto_6
    :try_start_6
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v9

    :try_start_7
    const-string/jumbo v2, "gzip"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/androidquery/callback/AbstractAjaxCallback;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v9, v2

    :cond_e
    :try_start_8
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    long-to-int v2, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    if-nez v6, :cond_10

    move-object v0, v3

    check-cast v0, Lcom/androidquery/util/PredefinedBAOS;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/androidquery/util/PredefinedBAOS;->toByteArray()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v2

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v18

    :goto_7
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v7, v6

    move-object v3, v8

    goto/16 :goto_3

    :cond_f
    :try_start_9
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v3, v2

    goto :goto_6

    :cond_10
    :try_start_a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_12

    :cond_11
    const/4 v2, 0x0

    move-object v6, v7

    goto :goto_7

    :catchall_1
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    :goto_8
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v2

    :catchall_2
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto :goto_8

    :catchall_4
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto :goto_8

    :catchall_5
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_5

    :catchall_6
    move-exception v2

    goto/16 :goto_5

    :catch_2
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_4

    :catch_3
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_4

    :cond_12
    move-object v2, v6

    move-object v6, v7

    goto :goto_7

    :cond_13
    move-object v3, v5

    goto/16 :goto_2
.end method

.method private httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v0, "%entity"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/http/HttpEntity;

    :goto_0
    if-eqz p3, :cond_0

    const-string/jumbo v1, "Content-Type"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, p2, p1, p3, p5}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private httpGet(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "get"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpMulti(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "multipart"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v1, Lcom/androidquery/callback/AbstractAjaxCallback;->a:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v1, p0, v0}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/net/HttpURLConnection;)V

    :cond_2
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "--*****--\r\n"

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xc8

    if-lt v2, v1, :cond_3

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_7

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "error"

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, v3

    :goto_2
    const-string/jumbo v5, "response"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p4, v2}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    return-void

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "post"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "put"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private isActive()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->y:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isMultiPart(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, v2, Ljava/io/File;

    if-nez v0, :cond_2

    instance-of v0, v2, [B

    if-nez v0, :cond_2

    instance-of v0, v2, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeCookie()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private network()V
    .locals 4

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->z:I

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDelete(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    iget v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->z:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iget v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->z:I

    if-ne v2, v3, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpGet(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isMultiPart(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpMulti(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method private network(I)V
    .locals 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    add-int/lit8 v2, p1, -0x1

    if-ne v0, v2, :cond_2

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private networkWork()V
    .locals 4

    const/16 v3, -0x65

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->C:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network(I)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, p0, v2}, Lcom/androidquery/auth/AccountHandle;->expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->I:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "reauth needed"

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->I:Z

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0, p0}, Lcom/androidquery/auth/AccountHandle;->reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getData()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    const-string/jumbo v1, "transform error"

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->M:I

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AjaxStatus;->reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    const-string/jumbo v2, "network error"

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private parseCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "charset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[^\\w-]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static patchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, " "

    const-string/jumbo v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\|"

    const-string/jumbo v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private self()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    return-object p0
.end method

.method public static setAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->b:Ljava/lang/String;

    return-void
.end method

.method public static setGZip(Z)V
    .locals 0

    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->d:Z

    return-void
.end method

.method public static setNetworkLimit(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->J:Ljava/util/concurrent/ExecutorService;

    const-string/jumbo v0, "setting network limit"

    sget v1, Lcom/androidquery/callback/AbstractAjaxCallback;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setReuseHttpClient(Z)V
    .locals 1

    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->L:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static setSSF(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 1

    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->K:Lorg/apache/http/conn/scheme/SocketFactory;

    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->L:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static setTimeout(I)V
    .locals 0

    sput p0, Lcom/androidquery/callback/AbstractAjaxCallback;->a:I

    return-void
.end method

.method public static setTransformer(Lcom/androidquery/callback/Transformer;)V
    .locals 0

    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->D:Lcom/androidquery/callback/Transformer;

    return-void
.end method

.method private toData(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1

    const-string/jumbo v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    :cond_0
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method private wake()V
    .locals 1

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->H:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private work(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->memGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->q:I

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->r:Ljava/io/File;

    invoke-static {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    const-string/jumbo v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Type: application/octet-stream"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-static {p3, p0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p2, [B

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, p1, p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/io/InputStream;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/io/InputStream;

    invoke-static {p0, p1, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->N:Z

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->A:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->A:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->A:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->w:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->w:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->w:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public async(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Warning"

    const-string/jumbo v1, "Possible memory leak. Calling ajax with a terminated activity."

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Warning"

    const-string/jumbo v1, "type() is not called with response type."

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public async(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-nez v0, :cond_1

    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->u:Z

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->refresh(Z)Lcom/androidquery/callback/AjaxStatus;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0}, Lcom/androidquery/auth/AccountHandle;->authenticated()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "auth needed"

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0, p0}, Lcom/androidquery/auth/AccountHandle;->auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->reset()Lcom/androidquery/callback/AjaxStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->work(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public auth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "g."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/androidquery/auth/GoogleHandle;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->t:Lcom/androidquery/auth/AccountHandle;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public block()V
    .locals 2

    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot block UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->G:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->H:Z

    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->a:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected cacheAvailable(Landroid/content/Context;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->q:I

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method callback()V
    .locals 9

    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v7}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    iput-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->G:Z

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getHandler()Ljava/lang/Object;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v7

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    aput-object v1, v4, v2

    const-class v1, Lcom/androidquery/callback/AjaxStatus;

    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->i:Ljava/lang/String;

    sget-object v5, Lcom/androidquery/callback/AbstractAjaxCallback;->F:[Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    aput-object v3, v6, v7

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    aput-object v3, v6, v2

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    aput-object v3, v6, v8

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut()V

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->wake()V

    invoke-static {}, Lcom/androidquery/util/AQUtility;->debugNotify()V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method public callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected datastoreGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public encoding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public expire(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->w:J

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public failure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    :cond_0
    return-void
.end method

.method public fileCache(Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isStreamingContent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxStatus;->file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/io/File;",
            "[B)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {p3, p4, v0, v1}, Lcom/androidquery/util/AQUtility;->storeAsync(Ljava/io/File;[BJ)V

    goto :goto_0
.end method

.method protected getCacheFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->r:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->g:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->g:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/androidquery/callback/AjaxStatus;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    return-object v0
.end method

.method public handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->g:Ljava/lang/ref/Reference;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isStreamingContent()Z
    .locals 2

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/androidquery/util/XmlDom;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public memCache(Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public method(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->z:I

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public networkUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->m:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->m:Ljava/util/Map;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public policy(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->q:I

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/app/Dialog;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->j:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public proxy(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TK;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->E:Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->u:Z

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public retry(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->C:I

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->backgroundWork()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getReauth()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->B:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v1, -0x65

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1
.end method

.method protected showProgress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->j:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/androidquery/callback/AbstractAjaxCallback$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback$1;-><init>(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public targetFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->s:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public timeout(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->v:I

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    invoke-direct {v2, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string/jumbo v0, "network"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->correctEncoding([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "file"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    :try_start_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v1, p2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->p:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->p:Lcom/androidquery/callback/Transformer;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->D:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->D:Lcom/androidquery/callback/Transformer;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v1, v0

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v3, Lcom/androidquery/util/XmlDom;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/androidquery/util/XmlDom;

    invoke-direct {v0, v2}, Lcom/androidquery/util/XmlDom;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p3, v2}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v3, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p2

    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->x:Ljava/lang/String;

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, p2

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_6
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, p2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->p:Lcom/androidquery/callback/Transformer;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->f:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uiCallback(Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->B:Z

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->g:Ljava/lang/ref/Reference;

    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->h:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
