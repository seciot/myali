.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public task:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfoResult;->task:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfoResult;->task:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;

    return-object v0
.end method

.method public setTask(Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfoResult;->task:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;

    return-void
.end method
