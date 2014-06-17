.class public Lcom/alipay/android/widget/security/ui/QihooGuardActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "qihoo_setting"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "qihooSwitch"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "qihooSwitchCover"
    .end annotation
.end field

.field c:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "QihooGuardActivity"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->e:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->c:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->e:Z

    const-string/jumbo v0, "\u6b63\u5728\u83b7\u53d6\u4fdd\u62a4\u72b6\u6001"

    new-instance v1, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isSupportSmsGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->b()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->c:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->dismissProgressDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isSupportSmsGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->b()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->dismissProgressDialog()V

    goto :goto_0
.end method
