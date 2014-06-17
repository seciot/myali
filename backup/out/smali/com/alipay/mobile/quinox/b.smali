.class final Lcom/alipay/mobile/quinox/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$100(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    #getter for: Lcom/alipay/mobile/quinox/LauncherApplication;->j:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$200(Lcom/alipay/mobile/quinox/LauncherApplication;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
