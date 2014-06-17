.class public Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "alipay_user_login"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field n:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "forgetPwd"
    .end annotation
.end field

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    return v0
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/login/bean/b;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/login/bean/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->d(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "alipayLoginView"

    const-string/jumbo v2, "loginButton"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->i:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final d()V
    .locals 5

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->m:Landroid/view/LayoutInflater;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$layout;->aT:I

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->k:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/a;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;ILjava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    return-void
.end method

.method final f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "alipay"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->f()V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "alipayLoginView"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final i()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->i:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "loginInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setThreshold(I)V

    iput-boolean v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/login/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/login/d;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bi:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->onDestroyView()V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "phoneLoginView"

    const-string/jumbo v2, "alipayLoginView"

    const-string/jumbo v3, "backIcon"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/security/authcenter/ui/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setSelection(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->t:Z

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    new-instance v1, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "loginInfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method
