.class final Lcom/alipay/mobile/alipassapp/ui/common/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/an;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/an;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25\uff0cappId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5e94\u7528\u6388\u6743\u6210\u529f\uff0cappId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff0cauthCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/an;->b(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "auth_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Lcom/alipay/mobile/alipassapp/ui/common/an;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/an;->c(Lcom/alipay/mobile/alipassapp/ui/common/an;)V

    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5e94\u7528\u4e0d\u9700\u8981\u6388\u6743\uff0cappId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/an;->c(Lcom/alipay/mobile/alipassapp/ui/common/an;)V

    return-void
.end method

.method public final onUserCancel()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u7528\u6237\u53d6\u6d88\u6388\u6743\uff0cappId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ao;->a:Lcom/alipay/mobile/alipassapp/ui/common/an;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Lcom/alipay/mobile/alipassapp/ui/common/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
