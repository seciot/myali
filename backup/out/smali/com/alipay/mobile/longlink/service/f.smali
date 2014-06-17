.class final Lcom/alipay/mobile/longlink/service/f;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/f;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "===== ReconnTimerTask() TimerTask====="

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/f;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->b()V

    return-void
.end method
