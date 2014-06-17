.class public Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "pre_regist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;
    }
.end annotation


# instance fields
.field d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "regist_protocol_tip"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "protocolCheck"
    .end annotation
.end field

.field f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "ensureRegist"
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->g:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->T:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "%s"

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "https://mgw.alipay.com/agreement.htm"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setTextViewUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->ck:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    check-cast p1, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->ck:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;)V
    .locals 1

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->g:Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "registInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->T:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "%s"

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckCheckBox(Landroid/widget/CheckBox;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    const-string/jumbo v1, "https://mgw.alipay.com/agreement.htm"

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setTextViewUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->ck:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/regist/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/regist/a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
