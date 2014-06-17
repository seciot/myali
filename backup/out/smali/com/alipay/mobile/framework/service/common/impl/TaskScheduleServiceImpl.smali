.class public Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService;


# instance fields
.field private a:Lcom/alipay/mobile/common/task/TaskManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/task/TaskManager;->getInstance()Lcom/alipay/mobile/common/task/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/TaskManager;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public parallelExecute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/TaskManager;->parallelExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public serialExecute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/TaskManager;->serialExecute(Ljava/lang/Runnable;)V

    return-void
.end method
