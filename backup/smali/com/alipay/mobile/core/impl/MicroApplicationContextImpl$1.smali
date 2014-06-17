.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Debug Mode Warnning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not a subclass of BaseActivity or BaseFragmentActivity."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->recordActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
