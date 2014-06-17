.class final Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->n(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;->mobileOperationEnvironment:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;->approveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;->approveType:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->imei:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->imsi:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->vimei:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->vimsi:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->g(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;->cancelApprove(Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;)Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveRes;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveRes;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->u(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
