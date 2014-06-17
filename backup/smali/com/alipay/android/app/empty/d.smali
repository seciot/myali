.class final Lcom/alipay/android/app/empty/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/empty/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/empty/d;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Z)Z

    new-instance v2, Lcom/alipay/android/app/empty/c;

    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/empty/c;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/empty/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/empty/c;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v3, "save window template error"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/empty/c;->close()V

    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Z)Z

    goto :goto_0
.end method
