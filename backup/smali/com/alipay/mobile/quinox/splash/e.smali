.class final Lcom/alipay/mobile/quinox/splash/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/splash/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/e;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/e;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
