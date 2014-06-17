.class public Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->c:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    aput-object v2, v0, v1

    new-instance v1, Lcom/alipay/mobile/aspect/advice/ActivityPerformanceAdvice;

    invoke-direct {v1}, Lcom/alipay/mobile/aspect/advice/ActivityPerformanceAdvice;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    return-void
.end method

.method public static createInstance()V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    invoke-direct {v0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->createInstance()V

    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    return-object v0
.end method


# virtual methods
.method public getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAdviceOnJoinPoint:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerPointCutAdvice put:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerPointCutAdvice add:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
