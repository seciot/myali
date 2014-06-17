.class final Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->b:Ljava/lang/String;

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    new-instance v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->n(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->mobileOperationEnvironment:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->password:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->approveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->approveType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->d(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->targetId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->e(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->targetType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->f(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->partnerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->o(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->passwordType:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->imei:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->vimei:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->clientKey:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    :cond_0
    array-length v0, p1

    if-le v0, v4, :cond_1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;->selectedAuthIdList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->g(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;->confirmApprove(Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;)Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->dismissProgressDialog()V

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->dismissProgressDialog()V

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a([Ljava/lang/Object;)Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    check-cast p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u7528\u6237\u6388\u6743\u786e\u8ba4\u7ed3\u679c:id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",isSuccess\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->success:Z

    if-nez v0, :cond_d

    const-string/jumbo v0, "206"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->v:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/w;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/w;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "1001"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "1830"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "1831"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->v:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/x;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/x;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "1003"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "1832"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->u:I

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "MOBILEPASSWORD"

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "20000060"

    :goto_1
    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->w:I

    new-instance v3, Lcom/alipay/mobile/deviceAuthorization/ui/y;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/y;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "PAYMENTPASSWORD"

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "20000013"

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u9519\u8bef\u7684passwordType\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "1005"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "6001"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "6002"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "6003"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->s(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->t(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    const-string/jumbo v1, "Confirming"

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/mobile/deviceAuthorization/ui/v;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/v;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
