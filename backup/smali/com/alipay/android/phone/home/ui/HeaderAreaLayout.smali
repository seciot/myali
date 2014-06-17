.class public Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidget;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APButton;

.field private g:Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

.field private h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private i:Landroid/view/View;

.field private j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private k:Landroid/os/Handler;

.field private l:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

.field private o:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

.field private p:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

.field private q:Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;

.field private r:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

.field private s:Lcom/alipay/android/phone/home/ui/n;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TabHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "HeaderAreaLayout"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 56
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->k:Landroid/os/Handler;

    .line 75
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 96
    const-class v1, Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->o:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->g:Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->g:Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->i:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v0, 0x1020012

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 104
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->t:Ljava/lang/ref/WeakReference;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->g:Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->w:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 110
    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    .line 111
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->c:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->p:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->attachNewFlagView(Landroid/view/View;)V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.cleanAccount"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/home/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/h;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/phone/home/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/e;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->q:Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;

    new-instance v0, Lcom/alipay/android/phone/home/ui/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/n;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->s:Lcom/alipay/android/phone/home/ui/n;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->q:Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->s:Lcom/alipay/android/phone/home/ui/n;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;->setActiveTopBaordView(Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->i:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/phone/home/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/f;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d()V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->n:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 50
    iget v0, p1, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;->waitPayRecordNum:I

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "waitPayRecordNum: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->k:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/phone/home/ui/j;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/ui/j;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->p:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "20000001#topIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "20000003"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/ui/n;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->s:Lcom/alipay/android/phone/home/ui/n;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_1
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/g;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_1
    return-void

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method static synthetic e(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/i;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->o:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->t:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->r:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->g:Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    iput-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m:Landroid/content/BroadcastReceiver;

    .line 188
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->r:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->a:Ljava/lang/String;

    const-string/jumbo v1, "new NfdPanelDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->r:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    .line 321
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->r:Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    new-instance v1, Lcom/alipay/android/phone/home/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/k;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->b(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->s:Lcom/alipay/android/phone/home/ui/n;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->s:Lcom/alipay/android/phone/home/ui/n;

    new-instance v1, Lcom/alipay/android/phone/home/ui/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/l;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/n;->setOnStateChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V

    .line 364
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->s:Lcom/alipay/android/phone/home/ui/n;

    new-instance v1, Lcom/alipay/android/phone/home/ui/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/m;-><init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/n;->setOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V

    .line 390
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->g:Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    return-object v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d()V

    .line 163
    return-void
.end method

.method public setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 168
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b:Landroid/content/Context;

    .line 178
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 173
    return-void
.end method
