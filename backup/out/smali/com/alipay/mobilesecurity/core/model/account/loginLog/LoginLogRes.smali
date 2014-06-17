.class public Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public actionDt:Ljava/lang/String;

.field public loginLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;",
            ">;"
        }
    .end annotation
.end field

.field public maxId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionDt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->actionDt:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->loginLogList:Ljava/util/List;

    return-object v0
.end method

.method public getMaxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->maxId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionDt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->actionDt:Ljava/lang/String;

    return-void
.end method

.method public setLoginLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->loginLogList:Ljava/util/List;

    return-void
.end method

.method public setMaxId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->maxId:Ljava/lang/String;

    return-void
.end method
