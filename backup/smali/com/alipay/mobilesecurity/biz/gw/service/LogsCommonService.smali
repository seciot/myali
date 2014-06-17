.class public Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private b:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void
.end method


# virtual methods
.method public getAuthorizeLogs(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;
    .locals 3

    sget-object v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query logs start on ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordReq;->maxId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;->queryApproveRecordList(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordReq;)Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;

    move-result-object v0

    return-object v0
.end method

.method public getLoginLogs(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;
    .locals 3

    sget-object v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query logs start on ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;->setMaxId(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;->setActionDt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/LoginLogServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/LoginLogServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/LoginLogServiceFacade;->queryLoginLogByPage(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;

    move-result-object v0

    return-object v0
.end method
