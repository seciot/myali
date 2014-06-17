.class public Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "authentication_fail_card"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_icon"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_status"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_status_tip"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "confirm_btn"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "two_btn_layout"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_certified_btn"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "change_card_btn"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;-><init>()V

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->m:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->k:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "N"

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "fromWhich"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VerifyCertifyByMspRes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "2"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->viewStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->d:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aW:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->c:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aP:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "CheckCertifyByMspRes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "5128"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "2"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->viewStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->d:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aW:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->c:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aP:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
