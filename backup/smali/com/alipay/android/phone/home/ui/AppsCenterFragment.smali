.class public Lcom/alipay/android/phone/home/ui/AppsCenterFragment;
.super Landroid/support/v4/app/Fragment;
.source "AppsCenterFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;
.implements Ljava/util/Observer;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "applications_center"
.end annotation


# static fields
.field public static b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APGridView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "appscenter_apps_grid"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pull_refresh_container"
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

.field private f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const-string/jumbo v0, "ApplicationsCenter"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->d:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method


# virtual methods
.method protected afterView()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppCenterAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/mobile/commonui/widget/APGridView;

    new-instance v3, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    invoke-direct {v3}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/mobile/commonui/widget/APGridView;

    new-instance v3, Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    invoke-direct {v3}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 81
    new-instance v2, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/mobile/commonui/widget/APGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/openplatform/R$layout;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/PortraitOverView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.android.main.appcenterinited"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 91
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public canRefresh()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string/jumbo v0, "AppsCenterFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    const-string/jumbo v0, "AppsCenterFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v0, "AppsCenterFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->d:Ljava/lang/String;

    .line 66
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 69
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 112
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 126
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->upgradeDownloadedApps()V

    .line 120
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string/jumbo v0, "AppsCenterFragment:Content"

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    if-nez p2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_3

    .line 133
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/c;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/d;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 134
    :cond_3
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_4

    .line 135
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/b;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/b;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 136
    :cond_4
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/a;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
