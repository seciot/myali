.class public Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->getLoginLogs(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request datas failed, error Msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->dismissProgressDialog()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getLoginLogList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getLoginLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getLoginLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->f:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->B:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;->getLoginDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->C:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->toast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->o:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->ca:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ak;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ak;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->F:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/aj;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/aj;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsWelcomeActivity;->a()V

    return-void
.end method
