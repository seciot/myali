.class final Lcom/alipay/mobilesecuritysdk/deviceID/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/b;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/util/List;)V

    goto :goto_0
.end method
