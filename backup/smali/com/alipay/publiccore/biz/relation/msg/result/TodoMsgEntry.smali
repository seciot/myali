.class public Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public businessArgs:Ljava/lang/String;

.field public businessId:Ljava/lang/String;

.field public businessType:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public gmtCreateTime:Ljava/lang/String;

.field public gmtModifiedTime:Ljava/lang/String;

.field public iconCount:Z

.field public image:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public remindScene:Ljava/lang/String;

.field public remindSceneCode:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionParam:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessArgs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->businessArgs:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->businessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->gmtCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtModifiedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->gmtModifiedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindScene()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->remindScene:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindSceneCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->remindSceneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isIconCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->iconCount:Z

    return v0
.end method

.method public setActionParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionParam:Ljava/lang/String;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setBusinessArgs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->businessArgs:Ljava/lang/String;

    return-void
.end method

.method public setBusinessId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->businessId:Ljava/lang/String;

    return-void
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->businessType:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->description:Ljava/lang/String;

    return-void
.end method

.method public setGmtCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->gmtCreateTime:Ljava/lang/String;

    return-void
.end method

.method public setGmtModifiedTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->gmtModifiedTime:Ljava/lang/String;

    return-void
.end method

.method public setIconCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->iconCount:Z

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->image:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->priority:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setRemindScene(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->remindScene:Ljava/lang/String;

    return-void
.end method

.method public setRemindSceneCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->remindSceneCode:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->title:Ljava/lang/String;

    return-void
.end method
