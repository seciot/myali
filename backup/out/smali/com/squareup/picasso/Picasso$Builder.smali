.class public Lcom/squareup/picasso/Picasso$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/squareup/picasso/Loader;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/squareup/picasso/Cache;

.field private e:Lcom/squareup/picasso/Picasso$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/picasso/Picasso;
    .locals 7

    iget-object v1, p0, Lcom/squareup/picasso/Picasso$Builder;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->b:Lcom/squareup/picasso/Loader;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/squareup/picasso/l;->a(Landroid/content/Context;)Lcom/squareup/picasso/Loader;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->b:Lcom/squareup/picasso/Loader;

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    if-nez v0, :cond_1

    new-instance v0, Lcom/squareup/picasso/LruCache;

    invoke-direct {v0, v1}, Lcom/squareup/picasso/LruCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-instance v2, Lcom/squareup/picasso/n;

    invoke-direct {v2}, Lcom/squareup/picasso/n;-><init>()V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->c:Ljava/util/concurrent/ExecutorService;

    :cond_2
    new-instance v6, Lcom/squareup/picasso/h;

    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    invoke-direct {v6, v0}, Lcom/squareup/picasso/h;-><init>(Lcom/squareup/picasso/Cache;)V

    new-instance v0, Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->b:Lcom/squareup/picasso/Loader;

    iget-object v3, p0, Lcom/squareup/picasso/Picasso$Builder;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    iget-object v5, p0, Lcom/squareup/picasso/Picasso$Builder;->e:Lcom/squareup/picasso/Picasso$Listener;

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Loader;Ljava/util/concurrent/ExecutorService;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/h;)V

    return-object v0
.end method
