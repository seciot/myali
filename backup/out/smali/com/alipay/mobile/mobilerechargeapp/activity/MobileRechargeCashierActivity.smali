.class public Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field public a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected c:Lcom/alipay/mobile/commonui/widget/APTableView;

.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;[B)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resp is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "stat"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "statDesc"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "forwardOpt"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "detail"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bx;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bx;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/by;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/by;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "actionType"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/activity/bz;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bz;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private b()V
    .locals 3

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/cb;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/cb;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->g:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bindphonenum"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "err_valid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->f:Z

    const-string/jumbo v1, "phone_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->g:I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->g:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->g:I

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bv;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bv;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getCmsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "query cms:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/cc;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/cc;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processAddalertSign Status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->a(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setRequestUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setNeedLogin(Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setHandlerType(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/browser/HtmlActivityV2_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "HARequest"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x2

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    goto :goto_0
.end method

.method protected b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cancelalertSign Status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->b(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->h:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->dismissProgressDialog()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000003"

    const-string/jumbo v2, "10000003"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
