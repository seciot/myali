.class public Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;


# instance fields
.field private a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->a:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private static final declared-synchronized a()Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;
    .locals 2

    const-class v1, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    invoke-direct {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;-><init>()V

    sput-object v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->a()Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    return-object v0
.end method


# virtual methods
.method public getHandler(Ljava/lang/String;)Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    return-object v0
.end method

.method public registerHandler(Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unRegisterHandler(Ljava/lang/String;)Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    return-object v0
.end method
