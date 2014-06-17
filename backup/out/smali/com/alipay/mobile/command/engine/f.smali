.class final Lcom/alipay/mobile/command/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "do "

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    iget-object v1, v1, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v1, v0, v3

    const-string/jumbo v1, " Trigger  unKnow Exception."

    aput-object v1, v0, v4

    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "do "

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    iget-object v1, v1, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v1, v0, v3

    const-string/jumbo v1, " Trigger  unKnow Exception."

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
