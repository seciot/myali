.class public Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;
.super Ljava/lang/Object;


# instance fields
.field public actionId:Ljava/lang/String;

.field public appID:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public behavID:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

.field public draw_times:Ljava/util/concurrent/atomic/AtomicLong;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_ALIPAY_START:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->actionId:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->behavID:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->time:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->draw_times:Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->appID:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->appVersion:Ljava/lang/String;

    return-void
.end method
