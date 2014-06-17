.class public abstract Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
.super Lcom/alipay/mobile/framework/service/CommonService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parallelExecute(Ljava/lang/Runnable;)V
.end method

.method public abstract serialExecute(Ljava/lang/Runnable;)V
.end method
