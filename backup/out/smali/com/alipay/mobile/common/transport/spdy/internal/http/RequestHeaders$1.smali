.class Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser$CacheControlHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->access$002(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->d:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->access$102(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;I)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "max-stale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->e:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->access$202(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;I)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "min-fresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->f:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->access$302(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;I)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "only-if-cached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->g:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->access$402(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;Z)Z

    goto :goto_0
.end method
