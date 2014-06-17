.class Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;

    #getter for: Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;->e:Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;->access$300(Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/alipay/mobile/common/transport/http/legacy/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
