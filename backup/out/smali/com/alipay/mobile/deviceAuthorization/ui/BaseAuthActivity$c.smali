.class final Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    return-void
.end method

.method private varargs a()Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;
    .locals 5

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;-><init>()V

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->imei:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->vimei:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->vimsi:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilesecurity/core/model/Tid;->clientKey:Ljava/lang/String;

    :cond_0
    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;->approveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;->approveType:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->d(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;->targetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->e(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;->targetType:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->f(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;->partnerId:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->g(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;->prepareApprove(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;)Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->h(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000055"

    const-string/jumbo v3, "20000055"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a()Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    check-cast p1, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->dismissProgressDialog()V

    invoke-static {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->i(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->j(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "206"

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->x:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->v:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/aa;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/aa;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "1005"

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "6001"

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "6002"

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "6003"

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->l(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->success:Z

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->m(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V

    goto/16 :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    const-string/jumbo v1, "Preparing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/mobile/deviceAuthorization/ui/z;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/z;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
