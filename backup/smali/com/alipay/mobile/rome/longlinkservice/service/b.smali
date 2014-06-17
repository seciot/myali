.class final Lcom/alipay/mobile/rome/longlinkservice/service/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/b;->a:Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/service/b;->a:Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->b:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/longlink/LongLinkServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/longlinkservice/service/b;->a:Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;

    invoke-static {v1}, Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;->a(Lcom/alipay/mobile/rome/longlinkservice/service/LongLinkScreenOffService;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/LongLinkServiceManager;->stopLink()V

    return-void
.end method
