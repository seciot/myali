.class final Lcom/alipay/android/widgets/asset/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v0, "GestureActivity_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LoginActivity_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",showWap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->b(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_2
    const-string/jumbo v1, "NULL"

    goto :goto_0
.end method
