.class public Lcom/alipay/android/widget/security/ui/PushSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "push_setting"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

.field protected c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pushSwitch"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pushSwitchDescip"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->f:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/ui/PushSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/PushSettingActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->e:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->b:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->b:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/PushSettingService;->getPushState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->f:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init() mPushSwitch="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->e:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "true"

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->b:Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/PushSettingService;->setPushState(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onKeyDown() pushStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "false"

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
