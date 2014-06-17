.class public Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static h:Z

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

.field private d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

.field private g:Landroid/widget/ListView;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->h:Z

    sput-boolean v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->i:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->l:Ljava/lang/String;

    const-string/jumbo v0, "client"

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->F:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ae;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ae;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    sput-boolean v2, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->h:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a()V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    sget-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->h:Z

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->i:Z

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->i:Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->getMoreFinish()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->toast(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->D:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setNoAction()V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->E:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/af;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/af;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->f:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->j:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->getLoginLogs(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request datas failed, error Msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->dismissProgressDialog()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getLoginLogList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getLoginLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->clear()V

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getLoginLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->addData(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getMaxId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->disableLoadMore()V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getMaxId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getActionDt()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->enableLoadMore()V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Next page is enable, maxId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method public b(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->dismissProgressDialog()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->m:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cf:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->y:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->i:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ac;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ac;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->L:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->f:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ad;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ad;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->g:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method
