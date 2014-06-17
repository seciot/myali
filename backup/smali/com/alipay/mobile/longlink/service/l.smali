.class public final Lcom/alipay/mobile/longlink/service/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/longlink/service/l;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/l;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/l;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/l;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alipay/mobile/longlink/service/l;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/longlink/service/l;->a:Lcom/alipay/mobile/longlink/service/l;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PushAppInfo must be created by calling createInstance..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/longlink/service/l;->a:Lcom/alipay/mobile/longlink/service/l;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/alipay/mobile/longlink/service/l;
    .locals 2

    const-class v1, Lcom/alipay/mobile/longlink/service/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/longlink/service/l;->a:Lcom/alipay/mobile/longlink/service/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/longlink/service/l;

    invoke-direct {v0}, Lcom/alipay/mobile/longlink/service/l;-><init>()V

    sput-object v0, Lcom/alipay/mobile/longlink/service/l;->a:Lcom/alipay/mobile/longlink/service/l;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/longlink/service/l;->a:Lcom/alipay/mobile/longlink/service/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/l;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/l;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/l;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/l;->d:Ljava/lang/String;

    return-object v0
.end method
