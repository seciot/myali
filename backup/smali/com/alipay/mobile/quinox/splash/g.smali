.class final Lcom/alipay/mobile/quinox/splash/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/splash/f;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/g;->a:Lcom/alipay/mobile/quinox/splash/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/g;->a:Lcom/alipay/mobile/quinox/splash/f;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->a(Lcom/alipay/mobile/quinox/splash/c;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/g;->a:Lcom/alipay/mobile/quinox/splash/f;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->b(Lcom/alipay/mobile/quinox/splash/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/g;->a:Lcom/alipay/mobile/quinox/splash/f;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->a(Lcom/alipay/mobile/quinox/splash/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/g;->a:Lcom/alipay/mobile/quinox/splash/f;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->c(Lcom/alipay/mobile/quinox/splash/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
