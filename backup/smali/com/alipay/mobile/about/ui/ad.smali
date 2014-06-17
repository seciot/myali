.class final Lcom/alipay/mobile/about/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ad;->b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/ad;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ad;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ad;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ad;->b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    #getter for: Lcom/alipay/mobile/about/ui/FloatWindowBigView;->a:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/about/ui/FloatWindowBigView;->access$100(Lcom/alipay/mobile/about/ui/FloatWindowBigView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/about/ui/ae;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/ae;-><init>(Lcom/alipay/mobile/about/ui/ad;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
