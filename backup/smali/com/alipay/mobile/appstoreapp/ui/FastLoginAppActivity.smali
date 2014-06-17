.class public Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "FastLoginAppActivity.java"

# interfaces
.implements Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;
.implements Ljava/util/Observer;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private c:Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

.field private d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private e:Z

.field private f:Lcom/alipay/mobile/commonui/widget/APListView;

.field private g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

.field private h:Lcom/alipay/mobile/appstoreapp/common/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/appstoreapp/common/Page",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->e:Z

    .line 58
    iput v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->i:I

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->j:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a:Z

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->i:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->j:I

    return p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 163
    .line 164
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 166
    :goto_0
    if-ge v2, v3, :cond_0

    .line 167
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    add-int/lit8 v0, v1, 0x1

    .line 166
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;Lcom/alipay/mobile/appstoreapp/common/QueryResult;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p1}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/common/Page;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->h:Lcom/alipay/mobile/appstoreapp/common/Page;

    iput-boolean v5, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->e:Z

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->h:Lcom/alipay/mobile/appstoreapp/common/Page;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->h:Lcom/alipay/mobile/appstoreapp/common/Page;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/common/Page;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->h:Lcom/alipay/mobile/appstoreapp/common/Page;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/common/Page;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->h:Lcom/alipay/mobile/appstoreapp/common/Page;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/common/Page;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->addToFastLogin(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->h:Lcom/alipay/mobile/appstoreapp/common/Page;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/common/Page;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->i:I

    iput-boolean v6, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->e:Z

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->getMoreFinish(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->e:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->b()V

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->e:Z

    if-nez v0, :cond_5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/R$layout;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->removeFooterView()V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->f:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->j:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->c:Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

    return-object v0
.end method

.method static synthetic c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string/jumbo v0, "FastLoginFirstTimeFlag"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->e:Z

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/q;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/appstoreapp/ui/q;-><init>(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lcom/alipay/mobile/openplatform/R$layout;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->setContentView(I)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    new-instance v0, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->c:Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->f:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->f:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->f:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->f:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppOnItemClickListener;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppOnItemClickListener;-><init>(Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getThirdAppsFromLocal()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Ljava/util/List;)V

    .line 72
    const-string/jumbo v0, "FastLoginFirstTimeFlag"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a:Z

    .line 73
    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/q;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/appstoreapp/ui/q;-><init>(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)V

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->removeFastLoginById(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 281
    :cond_0
    return-void
.end method

.method public declared-synchronized update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->b:Ljava/lang/String;

    .line 256
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_3

    .line 257
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 258
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a()V

    .line 263
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->notifyDataSetChanged()V

    .line 266
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->notifyDataSetChanged()V

    .line 269
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->g:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_3
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
