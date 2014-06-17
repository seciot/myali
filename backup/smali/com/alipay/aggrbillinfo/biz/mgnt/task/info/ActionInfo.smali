.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;
.super Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;


# instance fields
.field public actionId:Ljava/lang/String;

.field public actionType:I

.field public canSkip:Z

.field public captchaBase64:Ljava/lang/String;

.field public captchaUrl:Ljava/lang/String;

.field public hideInput:Z

.field public prompt:Ljava/lang/String;

.field public skipPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()I
    .locals 1

    iget v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->actionType:I

    return v0
.end method

.method public getCaptchaBase64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->captchaBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->captchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->skipPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public isCanSkip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->canSkip:Z

    return v0
.end method

.method public isHideInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->hideInput:Z

    return v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->actionId:Ljava/lang/String;

    return-void
.end method

.method public setActionType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->actionType:I

    return-void
.end method

.method public setCanSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->canSkip:Z

    return-void
.end method

.method public setCaptchaBase64(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->captchaBase64:Ljava/lang/String;

    return-void
.end method

.method public setCaptchaUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->captchaUrl:Ljava/lang/String;

    return-void
.end method

.method public setHideInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->hideInput:Z

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->prompt:Ljava/lang/String;

    return-void
.end method

.method public setSkipPrompt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;->skipPrompt:Ljava/lang/String;

    return-void
.end method
