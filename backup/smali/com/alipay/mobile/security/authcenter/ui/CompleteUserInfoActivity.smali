.class public Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_complete_userinfo"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_complete_userinfo_hint"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_account_login_id_value"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_user_name"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_pay_password"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_show_password_box"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "complete_button"
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/security/authcenter/a/b;

.field private h:Landroid/app/AlertDialog$Builder;

.field private i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/j;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/j;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/k;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/k;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->R:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->toast(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    :goto_0
    return v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->toast(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->toast(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->i:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/Button;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setLongClickable(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->h:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FROM_REGISTER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ct:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "logonId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "login_entry"

    const-string/jumbo v3, "register"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected b()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "logonId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->be:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "FROM_REGISTER"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->g:Lcom/alipay/mobile/security/authcenter/a/b;

    invoke-virtual {v4, v3, v0, v2, v1}, Lcom/alipay/mobile/security/authcenter/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->dismissProgressDialog()V

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/l;

    invoke-direct {v2, p0, p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/l;-><init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->dismissProgressDialog()V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->getResultStatus()I

    move-result v1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_4

    const v0, 0x13265e4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FROM_REGISTER"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->c()V

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3, v2}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/b;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/authcenter/a/b;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;->g:Lcom/alipay/mobile/security/authcenter/a/b;

    return-void
.end method
