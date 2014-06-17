.class public Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

.field protected b:Lcom/alipay/mobile/commonui/widget/APButton;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

.field private g:Lcom/alipay/mobileprod/biz/pub/MobilePublicService;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->e:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->f:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v1, v1, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->getmParams()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "agreementId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->c:Ljava/lang/String;

    const-string/jumbo v1, "instId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->d:Ljava/lang/String;

    const-string/jumbo v1, "publicId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->f:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLength(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    new-instance v1, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;

    const-string/jumbo v2, "3,8"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->f:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->f:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/pub/MobilePublicService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/pub/MobilePublicService;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->g:Lcom/alipay/mobileprod/biz/pub/MobilePublicService;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;->setAgreementId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;->setInstId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;->setMobile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->h:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;->setFollowerId(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->g:Lcom/alipay/mobileprod/biz/pub/MobilePublicService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->g:Lcom/alipay/mobileprod/biz/pub/MobilePublicService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/pub/MobilePublicService;->addMobileAccount(Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountReq;)Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->dismissProgressDialog()V

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountRes;->getResultStatus()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000003"

    const-string/jumbo v2, "10000003"

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->dismissProgressDialog()V

    throw v0

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ""

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/pub/dto/AddMobileAccountRes;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/mobilerechargeapp/R$string;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->C:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onClick mobileNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->showProgressDialog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->j:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/mobilerechargeapp/R$string;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
