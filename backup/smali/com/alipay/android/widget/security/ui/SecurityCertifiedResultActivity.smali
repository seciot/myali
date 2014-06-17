.class public Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;
.super Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_name_certified_result"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_confirmBn"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_viewBankList"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_result_image"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_result"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_result_tip"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_result_failTip"
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

.field private l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/alipay/android/widget/security/service/a;

.field private p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->n:Z

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "currentLogonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->j:Ljava/lang/String;

    const-string/jumbo v1, "fromWhich"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "certifiedClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->c:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logonId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromWhich: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->o:Lcom/alipay/android/widget/security/service/a;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "cardActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VerifyCertifyByMspRes result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aY:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aZ:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->n:Z

    const-string/jumbo v0, "Y"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aP:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "N"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->m:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->k:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->k:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JSON error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method protected a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "result id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aY:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aZ:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->n:Z

    const-string/jumbo v0, "Y"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aP:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aQ:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    const-string/jumbo v0, "N"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->d:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aW:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "N"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setIsCertified(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->cU:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->logonId:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;->showBankList:Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "currentLogonId"

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->o:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {v3, v0}, Lcom/alipay/android/widget/security/service/a;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->isFinishing()Z

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

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5101"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5102"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5104"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5105"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V

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

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

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

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->toast(Ljava/lang/String;I)V

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

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->toast(Ljava/lang/String;I)V

    throw v0
.end method

.method public callback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;->onResume()V

    return-void
.end method
