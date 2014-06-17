.class Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl$1;->this$0:Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl$1;->this$0:Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->clear()V

    :cond_0
    return-void
.end method
