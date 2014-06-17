.class public Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;
.super Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_certified_card"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_bank_info"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_name"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_ID"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_checkbox"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_agreeBn"
    .end annotation
.end field

.field private i:Lcom/alipay/android/widget/security/service/a;

.field private j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->k:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "currentLogonId"

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "fromWhich"

    const-string/jumbo v3, "cardActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "certifiedClass"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "currentLogonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->k:Ljava/lang/String;

    const-string/jumbo v1, "fromWhich"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "certifiedClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->m:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logonId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->i:Lcom/alipay/android/widget/security/service/a;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->m:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    if-nez v0, :cond_3

    :cond_2
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

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->cardInfo:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->l:Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->cardInfo:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dimcertNo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->dimcertNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->d:Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setArrowGone()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->d:Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->d:Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->cardNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftText2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->logo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v1, v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->dimcertNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    const-string/jumbo v0, "http://fun.alipay.com/bank/certify.htm"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->g:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setTextViewUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->g:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->g:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->g:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->aV:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->d:Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V

    return-void
.end method

.method protected b()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->cU:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    new-instance v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v2, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->certNo:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->certNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->k:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->logonId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v2, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->j:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    iget-object v2, v2, Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;->userId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->i:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {v2, v0}, Lcom/alipay/android/widget/security/service/a;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5105"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5103"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5104"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "202"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=VerifyCardInfo], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=VerifyCardInfo], [msg="

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

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->toast(Ljava/lang/String;I)V

    throw v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method
