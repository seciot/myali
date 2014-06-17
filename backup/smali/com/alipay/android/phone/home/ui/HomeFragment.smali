.class public Lcom/alipay/android/phone/home/ui/HomeFragment;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "HomeFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;
.implements Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;
.implements Ljava/util/Observer;


# static fields
.field public static c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field protected b:Lcom/alipay/mobile/commonui/widget/APGridView;

.field protected d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private e:Landroid/content/Context;

.field private f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

.field private g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private h:Landroid/os/Handler;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/alipay/android/phone/home/ui/PortraitOverView;

.field private k:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    .line 88
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 55
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->addView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    .line 88
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 63
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->addView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    .line 88
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 71
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->addView(Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a()V

    .line 75
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 101
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    .line 104
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/openplatform/R$layout;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/PortraitOverView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->k:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v2, Lcom/alipay/android/phone/openplatform/R$id;->u:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/phone/home/ui/p;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/home/ui/p;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v2, Lcom/alipay/android/phone/openplatform/R$id;->t:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/phone/home/ui/q;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/home/ui/q;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    new-instance v2, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    invoke-direct {v2}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    new-instance v2, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    invoke-direct {v2}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v1, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->b:Lcom/alipay/mobile/commonui/widget/APGridView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.cleanAccount"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/home/ui/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/r;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 114
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "20000001#topIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->k:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "10000007"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->k:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000002"

    const-string/jumbo v2, "20000056"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 219
    :cond_0
    sput-object v2, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 220
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Landroid/content/BroadcastReceiver;

    .line 225
    :cond_1
    return-void
.end method

.method public onHideFinish()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onHideStart()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->upgradeDownloadedApps()V

    .line 203
    :cond_0
    return-void
.end method

.method public onShowFinish()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public onShowStart()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 208
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 211
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_3

    .line 254
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/v;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/v;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/w;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/w;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 255
    :cond_3
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_4

    .line 256
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/u;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/u;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 257
    :cond_4
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/t;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
