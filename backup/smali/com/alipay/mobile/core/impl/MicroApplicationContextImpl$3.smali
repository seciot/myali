.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    #getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/ApplicationManager;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$0(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/core/ApplicationManager;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
