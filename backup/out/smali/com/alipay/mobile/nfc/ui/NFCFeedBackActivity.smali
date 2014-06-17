.class public Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private b:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private c:Landroid/widget/Button;

.field private d:I

.field private e:[Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u94f6\u884c\u5361"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "\u516c\u4ea4\u4e00\u5361\u901a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->e:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u9009\u62e9\u5361\u7c7b\u522b"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->e:[Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->d:I

    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;-><init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V
    .locals 2

    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;-><init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Lcom/alipay/mobile/commonui/widget/APTableView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;
    .locals 3

    new-instance v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->mobileNo:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->osName:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userAgent:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->productID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->productVersion:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NFC\u672a\u8bc6\u522b\u5361\u4fe1\u606f\u4e0a\u62a5\uff0c\u5361\u7c7b\u522b\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->getLeftText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",\u53d1\u5361\u5355\u4f4d\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->proposalMsg:Ljava/lang/String;

    const-string/jumbo v0, "proposal"

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->proposalType:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/nfc/R$layout;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/nfc/R$id;->J:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$1;-><init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/nfc/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;-><init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
