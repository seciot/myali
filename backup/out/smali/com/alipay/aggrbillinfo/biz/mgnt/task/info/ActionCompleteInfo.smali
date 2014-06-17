.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;
.super Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;


# instance fields
.field public actionId:Ljava/lang/String;

.field public input:Ljava/lang/String;

.field public isSkip:Z

.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public isSkip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->isSkip:Z

    return v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->actionId:Ljava/lang/String;

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->input:Ljava/lang/String;

    return-void
.end method

.method public setSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->isSkip:Z

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;->taskId:Ljava/lang/String;

    return-void
.end method
