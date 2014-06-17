.class final Lcom/alipay/mobile/about/service/FloatWindowService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/about/service/FloatWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/service/FloatWindowService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/FloatWindowService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/FloatWindowService;->a(Lcom/alipay/mobile/about/service/FloatWindowService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/ag;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/FloatWindowService;->b(Lcom/alipay/mobile/about/service/FloatWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/about/service/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/service/d;-><init>(Lcom/alipay/mobile/about/service/FloatWindowService$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/FloatWindowService;->a(Lcom/alipay/mobile/about/service/FloatWindowService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/FloatWindowService;->b(Lcom/alipay/mobile/about/service/FloatWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/about/service/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/service/e;-><init>(Lcom/alipay/mobile/about/service/FloatWindowService$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
