.class public Lcom/squareup/picasso/OkHttpLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/picasso/Loader;


# instance fields
.field private final a:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/squareup/picasso/l;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/OkHttpLoader;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/OkHttpLoader;->a:Lcom/squareup/okhttp/OkHttpClient;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Lcom/squareup/picasso/l;->a(Ljava/io/File;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/squareup/picasso/OkHttpLoader;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;I)V
    .locals 4

    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/squareup/picasso/OkHttpLoader;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/OkHttpLoader;->a:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v1, Lcom/squareup/okhttp/HttpResponseCache;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lcom/squareup/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setResponseCache(Ljava/net/ResponseCache;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)Lcom/squareup/picasso/Loader$Response;
    .locals 3

    iget-object v0, p0, Lcom/squareup/picasso/OkHttpLoader;->a:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v2, "only-if-cached"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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
.end method
