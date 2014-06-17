.class Lcom/alipay/mobile/longlink/service/n;
.super Lcom/alipay/mobile/longlink/ILongLinkService$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/service/LongLinkService;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/n;->a:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-direct {p0}, Lcom/alipay/mobile/longlink/ILongLinkService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/longlink/service/LongLinkService;Lcom/alipay/mobile/longlink/service/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/service/n;-><init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/longlink/service/q;->b()V

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/service/a;->b(Z)V

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->m()V

    return-void
.end method

.method public a(Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/longlink/service/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/longlink/service/k;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/longlink/service/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Lcom/alipay/mobile/longlink/service/k;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/longlink/service/l;->a()Lcom/alipay/mobile/longlink/service/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/longlink/service/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/longlink/service/l;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/longlink/service/l;->c(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAppUserInfo() userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", loginTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/service/a;->b(Z)V

    invoke-static {}, Lcom/alipay/mobile/longlink/service/q;->b()V

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->m()V

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/service/a;->b(Z)V

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->c()V

    return-void
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->o()Z

    move-result v0

    return v0
.end method
