.class public Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "authentication_un_realname"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "agreement_checkbox"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "authentication_btn"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;-><init>()V

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->i:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setTextViewUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->aV:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "noRealNameDetail"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method
