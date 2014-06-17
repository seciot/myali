.class public Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;
.super Ljava/lang/Object;
.source "HomeAppsOnItemLongClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u63d0\u793a"

    const-string/jumbo v2, "\u6700\u540e\u4e00\u4e2a\u5566\uff0c\u7559\u4e0b\u6211\u5427\uff5e"

    const-string/jumbo v3, "\u597d\u7684"

    new-instance v4, Lcom/alipay/android/phone/home/manager/m;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/manager/m;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;)V

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/alipay/android/phone/home/manager/k;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/home/manager/k;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/k;->start()V

    return-void
.end method

.method static synthetic a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 36
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

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/manager/l;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/manager/l;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 47
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    .line 49
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a()I

    move-result v2

    if-ge p3, v2, :cond_3

    .line 50
    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v4

    .line 51
    instance-of v2, v4, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    if-eqz v2, :cond_0

    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->f(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->offline()V

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v4, "\u8be5\u5e94\u7528\u5df2\u505c\u6b62\u670d\u52a1"

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Ljava/util/List;)V

    :cond_1
    move v0, v3

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    sget v1, Lcom/alipay/android/phone/openplatform/R$array;->b:I

    .line 60
    invoke-static {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->checkCanAddShortcut(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 61
    sget v1, Lcom/alipay/android/phone/openplatform/R$array;->a:I

    move v2, v1

    .line 63
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/alipay/android/phone/home/manager/j;

    invoke-direct {v5, p0, v4, v0}, Lcom/alipay/android/phone/home/manager/j;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 89
    goto :goto_0

    :cond_3
    move v0, v1

    .line 91
    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method
