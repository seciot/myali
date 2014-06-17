.class final Lcom/alipay/mobile/quinox/c;
.super Ljava/lang/ClassLoader;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/c;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    const-string/jumbo v0, "OriginClassLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "load class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/c;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->pattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/c;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/c;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    #getter for: Lcom/alipay/mobile/quinox/LauncherApplication;->k:Z
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$300(Lcom/alipay/mobile/quinox/LauncherApplication;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/c;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    #getter for: Lcom/alipay/mobile/quinox/LauncherApplication;->c:Lcom/alipay/mobile/quinox/classloader/a;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$400(Lcom/alipay/mobile/quinox/LauncherApplication;)Lcom/alipay/mobile/quinox/classloader/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
