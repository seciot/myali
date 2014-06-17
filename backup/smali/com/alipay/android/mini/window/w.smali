.class final Lcom/alipay/android/mini/window/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/mini/window/IFormShower;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->b(Lcom/alipay/android/mini/window/MiniWindowManager;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->c(Lcom/alipay/android/mini/window/MiniWindowManager;)Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->d(Lcom/alipay/android/mini/window/MiniWindowManager;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->e(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/app/data/DataProcessor;

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->f(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IUIForm;

    iget-object v0, p0, Lcom/alipay/android/mini/window/w;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->g(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    return-void
.end method
