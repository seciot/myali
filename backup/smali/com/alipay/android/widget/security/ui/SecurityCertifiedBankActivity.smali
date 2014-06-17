.class public Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;
.super Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_certified_bank"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_addCardLayout"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_addCardBn"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "networkFaild"
    .end annotation
.end field

.field private g:Lcom/alipay/android/widget/security/service/a;

.field private h:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->f:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->f:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "currentLogonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->j:Ljava/lang/String;

    const-string/jumbo v1, "fromWhich"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "certifiedClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->i:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logonId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromWhich: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " paramClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->g:Lcom/alipay/android/widget/security/service/a;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->i:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->i:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->h:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->h:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JSON error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->cU:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->logonId:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->showBankList:Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "currentLogonId"

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->g:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {v3, v0}, Lcom/alipay/android/widget/security/service/a;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "certifiedClass"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v3, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "5101"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "5102"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "5104"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "5105"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v3, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "202"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=CheckCertifyByMspReq], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=CheckCertifyByMspReq], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->toast(Ljava/lang/String;I)V

    throw v0
.end method

.method public callback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedBankActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;->onResume()V

    return-void
.end method
