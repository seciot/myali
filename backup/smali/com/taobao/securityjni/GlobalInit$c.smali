.class final Lcom/taobao/securityjni/GlobalInit$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/tools/SEDelay;


# static fields
.field private static a:J


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/securityjni/GlobalInit$c;->a:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$c;->b:Z

    iput-boolean p1, p0, Lcom/taobao/securityjni/GlobalInit$c;->b:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v2, 0x0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, v2}, Lcom/taobao/securityjni/GlobalInit$c;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/securityjni/GlobalInit$c;->a:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    sub-long v0, v2, v0

    return-wide v0
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->access$000()Landroid/content/ContextWrapper;

    move-result-object v0

    #calls: Lcom/taobao/securityjni/GlobalInit;->GetPackageDataPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->access$100(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/securityCrash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "securityCrash"

    invoke-static {v0, v1}, Lcom/taobao/securityjni/tools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$c;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->access$000()Landroid/content/ContextWrapper;

    move-result-object v0

    #calls: Lcom/taobao/securityjni/GlobalInit;->PubKeyTestSimplify(Landroid/content/ContextWrapper;)V
    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->access$200(Landroid/content/ContextWrapper;)V

    :cond_0
    return-void
.end method
