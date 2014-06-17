.class final Lcom/alipay/mobilesecuritysdk/deviceID/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->a:Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;

    iput-object p2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x14

    :try_start_0
    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;

    invoke-direct {v0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->a(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdModel;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    const-string/jumbo v3, "tid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    const-string/jumbo v3, "tid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    const-string/jumbo v3, "tid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    const-string/jumbo v3, "utdid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    const-string/jumbo v3, "utdid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/deviceID/a;->c:Ljava/util/Map;

    const-string/jumbo v3, "utdid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/util/List;)V

    goto :goto_0
.end method
