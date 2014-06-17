.class public Lcom/alipay/pushsdk/b/a/c;
.super Ljava/lang/Object;


# static fields
.field public static f:Lcom/alipay/pushsdk/b/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/pushsdk/b/a/c;->e:Landroid/content/Context;

    new-instance v0, Lcom/alipay/pushsdk/b/a/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b/a/d;-><init>(Lcom/alipay/pushsdk/b/a/c;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method private b()Landroid/net/NetworkInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/b/a/c;->e:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/net/URL;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/a/c;->a()Ljava/net/URL;

    move-result-object v2

    :try_start_0
    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/pushsdk/b/a/c;->e:Landroid/content/Context;

    const-string/jumbo v1, "alipay"

    invoke-static {v1}, Lcom/alipay/pushsdk/b/a/a;->a(Ljava/lang/String;)Lcom/alipay/pushsdk/b/a/a;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    :cond_0
    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/b/a/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const/16 v1, 0x4e20

    invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x7530

    invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-direct {p0}, Lcom/alipay/pushsdk/b/a/c;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    if-eqz v5, :cond_5

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_0
    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x50

    const-string/jumbo v4, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x1bb

    :cond_1
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p1, :cond_2

    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v5, p1, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    :try_start_3
    const-string/jumbo v1, "Content-type"

    const-string/jumbo v5, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-interface {v2, v1, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v5, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-interface {v2, v1, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v2, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v3

    :goto_3
    return-object v1

    :cond_2
    :try_start_4
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v4

    move-object v4, v3

    :goto_4
    :try_start_5
    instance-of v5, v1, Ljava/lang/NullPointerException;

    if-eqz v5, :cond_4

    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    invoke-virtual {v1, v2, v4}, Lcom/alipay/pushsdk/b/a/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto :goto_3

    :cond_3
    :try_start_6
    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    invoke-virtual {v1, v4, v2}, Lcom/alipay/pushsdk/b/a/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    goto :goto_3

    :cond_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto/16 :goto_0
.end method
