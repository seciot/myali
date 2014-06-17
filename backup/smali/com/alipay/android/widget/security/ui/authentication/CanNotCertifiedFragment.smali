.class public Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "authentication_cannot_certified"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "layout_certified_info"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_icon"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_status"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_certified_status_tip"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_name"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "certified_ID"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "layout_certified_img"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_support_status"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_support_status_tip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-class v1, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "5106"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v1, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationActivity;->e()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->f:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "resultTitle"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/ui/R$color;->colorBlack:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "resultDesc"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, ""

    :cond_1
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "realName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, ""

    :cond_2
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v1, "certNo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, ""

    :cond_3
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v1, "5127"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorDarkBlue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aR:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->j:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aN:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->e:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v1, "realName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->i:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v0, ""

    :cond_6
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v0, "Y"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "5126"

    iget-object v2, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->k:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v2, "resultTitle"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v1, ""

    :cond_9
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;->certifyReturnInfo:Ljava/util/Map;

    const-string/jumbo v1, "resultDesc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v0, ""

    :cond_a
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
