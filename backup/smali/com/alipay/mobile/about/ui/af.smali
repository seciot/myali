.class final Lcom/alipay/mobile/about/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/af;->b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/af;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method
