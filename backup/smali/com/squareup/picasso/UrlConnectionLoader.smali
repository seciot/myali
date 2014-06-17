.class public Lcom/squareup/picasso/UrlConnectionLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/picasso/Loader;


# static fields
.field static volatile a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/UrlConnectionLoader;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/UrlConnectionLoader;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)Lcom/squareup/picasso/Loader$Response;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/picasso/UrlConnectionLoader;->c:Landroid/content/Context;

    sget-object v1, Lcom/squareup/picasso/UrlConnectionLoader;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    :try_start_0
    sget-object v1, Lcom/squareup/picasso/UrlConnectionLoader;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/squareup/picasso/UrlConnectionLoader;->a:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/squareup/picasso/l;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/squareup/picasso/l;->a(Ljava/io/File;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/squareup/picasso/UrlConnectionLoader;->a:Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-eqz p2, :cond_3

    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v2, "only-if-cached"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v1, "X-Android-Response-Source"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/l;->b(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Lcom/squareup/picasso/Loader$Response;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/squareup/picasso/Loader$Response;-><init>(Ljava/io/InputStream;Z)V

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
