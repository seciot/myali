.class public Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static h:Z

.field private static i:Z

.field private static j:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

.field private d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

.field private g:Landroid/widget/ListView;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->h:Z

    sput-boolean v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->i:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->f:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->F:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/f;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    sput-boolean v2, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->h:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a()V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    sget-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->h:Z

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->i:Z

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->i:Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->getMoreFinish()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->toast(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setNoAction()V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->E:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/g;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/g;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->i:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/LogsCommonService;->getAuthorizeLogs(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request datas failed, error Msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->recordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(ZLjava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->clear()V

    :cond_2
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/approve/ApproveRecord;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->addData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->maxId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->disableLoadMore()V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(ZLjava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->maxId:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;->enableLoadMore()V

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Next page is enable, maxId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public b(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->dismissProgressDialog()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->m:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cf:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->G:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->L:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->f:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->d:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/e;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->g:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->c:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method
