.class public Lcom/alipay/pushsdk/b/a;
.super Lcom/alipay/pushsdk/b/a/c;


# static fields
.field public static b:I

.field public static c:I

.field private static final g:Ljava/lang/String;


# instance fields
.field public a:I

.field d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/b/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/b/a;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/alipay/pushsdk/b/a;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/pushsdk/b/a;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/pushsdk/b/a/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/b/a;->a:I

    iput-object p2, p0, Lcom/alipay/pushsdk/b/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "requestData"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/a/c;->a()Ljava/net/URL;

    move-result-object v3

    const/4 v4, 0x3

    const-string/jumbo v5, "HttpClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Request"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const-string/jumbo v5, "HttpClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Dest url:  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/alipay/pushsdk/b/a/c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/b/a;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Response "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/pushsdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
