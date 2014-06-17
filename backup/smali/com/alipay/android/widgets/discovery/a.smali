.class final Lcom/alipay/android/widgets/discovery/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field final synthetic b:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/a;->b:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    iput-object p2, p0, Lcom/alipay/android/widgets/discovery/a;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/a;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/a;->b:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000061"

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/a;->b:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;

    goto :goto_0
.end method
