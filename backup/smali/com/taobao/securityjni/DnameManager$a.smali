.class final Lcom/taobao/securityjni/DnameManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/tools/SEDelay;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/securityjni/DnameManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final run()V
    .locals 1

    :try_start_0
    #calls: Lcom/taobao/securityjni/DnameManager;->StartAHick()V
    invoke-static {}, Lcom/taobao/securityjni/DnameManager;->access$100()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
