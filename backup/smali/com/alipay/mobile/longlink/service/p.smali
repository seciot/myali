.class public final Lcom/alipay/mobile/longlink/service/p;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field final synthetic b:Lcom/alipay/mobile/longlink/service/LongLinkService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/p;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/longlink/service/p;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/p;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/LongLinkService;->c()Lcom/alipay/mobile/longlink/service/p;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/p;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/LongLinkService;->c()Lcom/alipay/mobile/longlink/service/p;

    move-result-object v0

    iget v2, v0, Lcom/alipay/mobile/longlink/service/p;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/longlink/service/p;->a:I

    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Decremented task count to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/longlink/service/p;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
