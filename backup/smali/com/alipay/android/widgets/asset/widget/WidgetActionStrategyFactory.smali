.class public Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->d:Z

    new-instance v0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;

    invoke-direct {v0, p1}, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->c:Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    const-string/jumbo v1, "50000010"

    new-instance v2, Lcom/alipay/android/widgets/asset/widget/AccountInfoWidgetActionStrategy;

    invoke-direct {v2, p1}, Lcom/alipay/android/widgets/asset/widget/AccountInfoWidgetActionStrategy;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/widgets/asset/widget/DefaultShowWidgetActionStrategy;

    invoke-direct {v0, p1}, Lcom/alipay/android/widgets/asset/widget/DefaultShowWidgetActionStrategy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    const-string/jumbo v2, "50000030"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    const-string/jumbo v2, "50000031"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    const-string/jumbo v2, "50000032"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    const-string/jumbo v2, "50000035"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;
    .locals 1

    sget-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->c:Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;

    :cond_0
    return-object v0
.end method

.method public final a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->d:Z

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->c:Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;

    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->d:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;

    iget-boolean v2, p0, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->d:Z

    invoke-interface {v0, v2}, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
