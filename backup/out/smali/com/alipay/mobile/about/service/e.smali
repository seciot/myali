.class final Lcom/alipay/mobile/about/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/service/FloatWindowService$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/FloatWindowService$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/e;->a:Lcom/alipay/mobile/about/service/FloatWindowService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/e;->a:Lcom/alipay/mobile/about/service/FloatWindowService$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/e;->a:Lcom/alipay/mobile/about/service/FloatWindowService$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/service/FloatWindowService$a;->a:Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->d(Landroid/content/Context;)V

    return-void
.end method
