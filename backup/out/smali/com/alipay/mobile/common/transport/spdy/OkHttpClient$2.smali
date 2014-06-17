.class Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;
.super Ljava/net/URLStreamHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

.field final synthetic val$protocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;->this$0:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;->val$protocol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;->val$protocol:Ljava/lang/String;

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;->val$protocol:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;->this$0:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;->this$0:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
