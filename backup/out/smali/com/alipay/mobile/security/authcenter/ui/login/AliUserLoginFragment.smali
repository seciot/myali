.class public abstract Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginAccountEditText"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APImageButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "accountClearButton"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginAccountButton"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "alipayLoginPasswordInput"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btnUserLogin"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected j:Lcom/alipay/mobile/security/authcenter/ui/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/security/authcenter/ui/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected l:Ljava/lang/String;

.field protected m:Landroid/view/LayoutInflater;

.field private n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final b(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d(Z)V

    return-void
.end method

.method protected abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected final c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d(Z)V

    return-void
.end method

.method protected abstract d()V
.end method

.method protected final e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method f()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->i:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->n:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/a;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->e:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/a;-><init>(Landroid/widget/EditText;Lcom/alipay/mobile/commonui/widget/APImageButton;Lcom/alipay/mobile/commonui/widget/APInputBox;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->f()V

    return-void
.end method

.method g()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->h()V

    return-void
.end method

.method h()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setDropDownHeight(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->i()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->j:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setDropDownBackgroundResource(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->Z:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->b()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bN:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->showDropDown()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->m:Landroid/view/LayoutInflater;

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
