.class public final Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;
.super Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;


# instance fields
.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b()V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->eD:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->b:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aW:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->c:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aR:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V
    .locals 2
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

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/devicemanage/ui/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/devicemanage/ui/f;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/devicemanage/ui/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/devicemanage/ui/e;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    new-instance v0, Lcom/alipay/mobile/security/devicemanage/ui/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/devicemanage/ui/h;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/devicemanage/ui/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/devicemanage/ui/g;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/devicemanage/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/devicemanage/ui/d;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aF:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->d()V

    return-void
.end method
