.class public Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;

.field b:Ljava/util/ArrayList;

.field private c:Z

.field private d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

.field private e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

.field private f:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

.field private g:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/content/Context;

.field private l:Z

.field private m:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

.field private n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->g:Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->l:Z

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->m:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u91cd\u8bd5"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/ad;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ad;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/mobile/mobilerechargeapp/activity/ae;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ae;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/ac;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/ac;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;Z)V

    move-object v0, p0

    move-object v2, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->l:Z

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private c()V
    .locals 3

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/ab;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ab;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iput-object p0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->k:Landroid/content/Context;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a()Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->f:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    const-string/jumbo v1, "bindphonenum"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sysphonelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactList;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactList;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mContactList = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b()V

    :cond_1
    return-void
.end method

.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iput p2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->addSwitch:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    iget-boolean v2, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->addSwitch:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->m:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;)V

    return-void
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processAddalertSign Status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-boolean v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->f:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iput v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->getMaxListSize()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->getAddSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->getSignQueryResListSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    invoke-virtual {v1}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->getMaxListSize()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b()V

    :cond_3
    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_5

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->a(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->dismissProgressDialog()V

    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addalertSign Exception Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected b()V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->c()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->i:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b()Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->dismissProgressDialog()V

    if-nez v1, :cond_0

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->w:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resultStatus \uff1d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->resultStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v2, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->resultStatus:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->k:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->i:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;-><init>(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->setContactList(Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->f:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    iget-object v3, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget-object v3, v3, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->mobileNo:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget v4, v4, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->signStatus:I

    iget-object v5, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

    iget-boolean v5, v5, Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;->valid:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a(Ljava/lang/String;IZ)V

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    invoke-virtual {v2}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->getDisplayData()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e:Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;

    invoke-virtual {v2}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnDisplayData;->isDisplayAddSwitch()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_2
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;->memo:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cancelalertSign Status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-boolean v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->f:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iput v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a()V

    :cond_2
    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->b(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->dismissProgressDialog()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancelalertSign Exception Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "inputnum"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->l:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->l:Z

    return-void
.end method
