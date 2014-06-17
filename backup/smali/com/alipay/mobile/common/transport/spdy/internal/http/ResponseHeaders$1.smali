.class Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser$CacheControlHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

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

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->j:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->access$002(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "no-store"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->k:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->access$102(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->l:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->access$202(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;I)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "s-maxage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->m:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->access$302(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;I)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->n:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->access$402(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "must-revalidate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->o:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->access$502(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Z)Z

    goto :goto_0
.end method
