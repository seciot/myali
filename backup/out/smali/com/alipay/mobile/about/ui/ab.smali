.class final Lcom/alipay/mobile/about/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ab;->b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/ab;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ab;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ab;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->b(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ab;->b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    invoke-virtual {v1}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/about/service/FloatWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ab;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
