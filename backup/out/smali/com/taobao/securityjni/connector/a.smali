.class public final Lcom/taobao/securityjni/connector/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/taobao/securityjni/connector/ConnectorHelper;

.field private f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/taobao/securityjni/connector/a;->a:I

    iput v0, p0, Lcom/taobao/securityjni/connector/a;->b:I

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/taobao/securityjni/connector/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/securityjni/connector/a;->f:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/util/HashMap;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v4

    if-ge v2, v0, :cond_2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v0, v4, v2

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v1, v4, v2

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    const/16 v2, 0x1388

    const/4 v8, -0x6

    const/4 v7, -0x1

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->e:Lcom/taobao/securityjni/connector/ConnectorHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->e:Lcom/taobao/securityjni/connector/ConnectorHelper;

    invoke-interface {v1}, Lcom/taobao/securityjni/connector/ConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/securityjni/connector/a;->d:Ljava/lang/String;

    :cond_0
    new-instance v3, Lcom/taobao/securityjni/connector/b;

    invoke-direct {v3}, Lcom/taobao/securityjni/connector/b;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->d:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v2, v4, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v1, -0x1

    iput v1, v3, Lcom/taobao/securityjni/connector/b;->a:I

    const-string/jumbo v1, "Response Entity Empty"

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v3

    :goto_1
    return-object v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->d:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->f:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/taobao/securityjni/connector/a;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v1, -0x2

    iput v1, v3, Lcom/taobao/securityjni/connector/b;->a:I

    const-string/jumbo v1, "Post Entity UnsupportedEncodingException"

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;

    move-object v1, v3

    goto :goto_1

    :cond_3
    :try_start_3
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/taobao/securityjni/connector/a;->d:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    const-string/jumbo v1, "utf-8"

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, ""

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v1, 0x400

    invoke-direct {v4, v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_2
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-eq v5, v7, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    const/4 v2, -0x4

    iput v2, v3, Lcom/taobao/securityjni/connector/b;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;

    :goto_3
    move-object v1, v3

    goto/16 :goto_1

    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/taobao/securityjni/connector/a;->e:Lcom/taobao/securityjni/connector/ConnectorHelper;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/taobao/securityjni/connector/a;->e:Lcom/taobao/securityjni/connector/ConnectorHelper;

    invoke-interface {v2, v1}, Lcom/taobao/securityjni/connector/ConnectorHelper;->syncPaser(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_7
    const/4 v2, 0x0

    iput v2, v3, Lcom/taobao/securityjni/connector/b;->a:I

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->d:Ljava/lang/Object;
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 v2, -0x5

    iput v2, v3, Lcom/taobao/securityjni/connector/b;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UNKNOWNHOST:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    :try_start_6
    iput v1, v3, Lcom/taobao/securityjni/connector/b;->a:I

    const-string/jumbo v1, "Response Get String Data Empty"

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;

    move-object v1, v3

    goto/16 :goto_1

    :cond_9
    const/4 v2, -0x3

    iput v2, v3, Lcom/taobao/securityjni/connector/b;->a:I

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, v3, Lcom/taobao/securityjni/connector/b;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Http Request Failed:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-object v1, v3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string/jumbo v4, "Network unreachable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x7

    iput v2, v3, Lcom/taobao/securityjni/connector/b;->a:I

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    iput v8, v3, Lcom/taobao/securityjni/connector/b;->a:I

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput v8, v3, Lcom/taobao/securityjni/connector/b;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/taobao/securityjni/connector/b;->c:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final a(Lcom/taobao/securityjni/connector/ConnectorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/securityjni/connector/a;->e:Lcom/taobao/securityjni/connector/ConnectorHelper;

    return-void
.end method
