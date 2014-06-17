.class public Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/alipassapp/ui/common/p;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected b:Lcom/alipay/mobile/commonui/widget/APListView;

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field protected d:Lcom/alipay/mobile/alipassapp/ui/eu;

.field protected e:Lcom/alipay/mobile/alipassapp/biz/model/c;

.field private f:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/alipay/mobile/alipassapp/biz/a;

.field private i:Lcom/alipay/mobile/alipassapp/ui/common/k;

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected static a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000062"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "20000062GetView"

    const-string/jumbo v9, ""

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v12, v1

    move-object v1, p0

    move-object v8, p1

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;->needPaging:Z

    const/16 v2, 0x32

    iput v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;->pageSize:I

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/ui/eu;->b()I

    move-result v2

    iput v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;->pageNum:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/c;->g()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->i:Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/eq;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassapp/ui/eq;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->f:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method private c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ep;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ep;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->j:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/er;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/er;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "getCard"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ctype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "b"

    const-string/jumbo v2, "m"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "channel"

    const-string/jumbo v2, "lk"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method

.method protected final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/es;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/es;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->c()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "tid"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/eu;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/eu;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->j:J

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->main_member_card_obtainable_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->obtainable_card_title_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->member_card_get_card:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->obtainable_card_list_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->no_obtainable_card_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/eu;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/alipassapp/ui/eu;-><init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/APListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_obtainable_card_viewgroup:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/common/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->i:Lcom/alipay/mobile/alipassapp/ui/common/k;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ek;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ek;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->f:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/el;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/el;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/em;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/em;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/eu;->a(Lcom/alipay/mobile/alipassapp/ui/ew;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/eo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/eo;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/eu;->a(Lcom/alipay/mobile/alipassapp/ui/ev;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->c()V

    return-void
.end method
