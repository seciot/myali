.class public Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_devicelistmanager"
.end annotation


# static fields
.field private static final g:Lcom/alipay/mobile/common/logging/Logger;


# instance fields
.field final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_deviceListView"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "empty_view"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "deviceManagerList"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private h:Lcom/alipay/mobile/security/devicemanage/b/a;

.field private i:Lcom/alipay/mobile/security/devicemanage/a/a;

.field private j:Lcom/alipay/mobile/security/tid/TidGetter;

.field private k:I

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DeviceManageActivity"

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->g:Lcom/alipay/mobile/common/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-class v0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/devicemanage/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/security/devicemanage/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->i:Lcom/alipay/mobile/security/devicemanage/a/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)Lcom/alipay/mobile/security/tid/TidGetter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->d()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->m:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getFooterViewsCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->removeFooterView(Landroid/view/View;)Z

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)Lcom/alipay/mobile/security/devicemanage/b/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->deviceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/security/devicemanage/b/a;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/security/devicemanage/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b()V

    return-void
.end method

.method protected a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "200"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->k:I

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/devicemanage/b/a;->a(Ljava/util/List;)V

    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->toast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->d()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "200"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;->terminalInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;->terminalInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/mobile/security/devicemanage/b/a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/security/devicemanage/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v2, Lcom/alipay/mobile/security/devicemanage/ui/a;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/a;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->h:Lcom/alipay/mobile/security/devicemanage/b/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/devicemanage/b/a;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->toast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->d()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->i:Lcom/alipay/mobile/security/devicemanage/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/security/devicemanage/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->dismissProgressDialog()V

    throw v0
.end method

.method protected b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->i:Lcom/alipay/mobile/security/devicemanage/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/devicemanage/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c()V

    goto :goto_1

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->dismissProgressDialog()V

    goto :goto_1
.end method

.method protected c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/devicemanage/ui/c;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/devicemanage/ui/c;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->j:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aD:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aE:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->m:Landroid/view/View;

    return-void
.end method
