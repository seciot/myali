.class public Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public actionDt:Ljava/lang/String;

.field public maxId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionDt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;->actionDt:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;->maxId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionDt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;->actionDt:Ljava/lang/String;

    return-void
.end method

.method public setMaxId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;->maxId:Ljava/lang/String;

    return-void
.end method
