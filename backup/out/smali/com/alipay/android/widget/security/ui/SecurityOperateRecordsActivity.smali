.class public Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/android/widget/security/component/XListView$a;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/android/widget/security/component/XListView;

.field private d:Landroid/widget/SimpleAdapter;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/widget/security/service/e;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private k:I

.field private l:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "SecurityOperateRecordsN"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListView;->stopRefresh()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListView;->stopLoadMore()V

    new-instance v0, Lcom/alipay/android/widget/security/service/e;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widget/security/service/e;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->f:Lcom/alipay/android/widget/security/service/e;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->f:Lcom/alipay/android/widget/security/service/e;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/alipay/android/widget/security/service/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setRefreshTime(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e()V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->h()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListView;->reMoveFoorView()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setmIsFooterReady(Z)V

    iput v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    return-void
.end method

.method protected a(Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;)V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10012"

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->getOperateLogList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->getPageNumEndDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getSubType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string/jumbo v1, "subType"

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->bI:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "imageV"

    sget v4, Lcom/alipay/mobile/clientsecurity/R$drawable;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const-string/jumbo v1, "address"

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->cD:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getOperateTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getOperateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const-string/jumbo v0, "opTime"

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->cD:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "subType"

    const-string/jumbo v1, "pc"

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->an:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "imageV"

    const-string/jumbo v1, "pc"

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->p:I

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->bK:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->o:I

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "address"

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "opTime"

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;->getOperateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->a:Ljava/util/List;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$layout;->aN:I

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v1, "imageV"

    aput-object v1, v4, v6

    const-string/jumbo v1, "subType"

    aput-object v1, v4, v7

    const-string/jumbo v1, "address"

    aput-object v1, v4, v8

    const-string/jumbo v1, "opTime"

    aput-object v1, v4, v9

    new-array v5, v10, [I

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bM:I

    aput v1, v5, v6

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bJ:I

    aput v1, v5, v7

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bK:I

    aput v1, v5, v8

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bL:I

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->d:Landroid/widget/SimpleAdapter;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->d:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/component/XListView;->reMoveFoorView()V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->d:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_6
.end method

.method public final b()V
    .locals 1

    const-string/jumbo v0, "backward"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->i:Ljava/lang/String;

    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e()V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->h()V

    return-void
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->d()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gt:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widget/security/component/XListView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setPullLoadEnable(Z)V

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->e()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widget/security/component/XListView;->setXListViewListener(Lcom/alipay/android/widget/security/component/XListView$a;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    const-string/jumbo v1, "\u521a\u521a"

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setRefreshTime(Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    new-instance v0, Lcom/alipay/android/widget/security/service/e;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/widget/security/service/e;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->f:Lcom/alipay/android/widget/security/service/e;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->f:Lcom/alipay/android/widget/security/service/e;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->getOperateLogList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->getOperateLogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->k:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->g()V

    goto :goto_0

    :cond_2
    throw v0
.end method

.method protected f()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void
.end method

.method protected g()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c:Lcom/alipay/android/widget/security/component/XListView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/component/XListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aO:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cB:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cu:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityOperateRecordsActivity;->c()V

    return-void
.end method
