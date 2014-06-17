.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;
.super Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;


# instance fields
.field public action:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;

.field public banks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public email:Ljava/lang/String;

.field public emailaccid:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public ratio:Ljava/lang/String;

.field public step:Ljava/lang/String;

.field public taskID:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->banks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->action:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;

    return-object v0
.end method

.method public getBanks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->banks:Ljava/util/List;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailaccid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->emailaccid:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->ratio:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->step:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->taskID:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->action:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;

    return-void
.end method

.method public setBanks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->banks:Ljava/util/List;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailaccid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->emailaccid:Ljava/lang/String;

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->num:Ljava/lang/String;

    return-void
.end method

.method public setRatio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->ratio:Ljava/lang/String;

    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->step:Ljava/lang/String;

    return-void
.end method

.method public setTaskID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->taskID:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->time:Ljava/lang/String;

    return-void
.end method
