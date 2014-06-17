.class public Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "taobao_user_login"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/login/bean/b;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "taobao"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->r:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->s:Lcom/alipay/mobile/security/authcenter/ui/x;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/x;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/login/bean/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v1, 0x0

    const-string/jumbo v2, "taobaoLoginView"

    const-string/jumbo v3, "loginButton"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->queryTaobaoUserList()Ljava/util/List;

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

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/bg;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->m:Landroid/view/LayoutInflater;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$layout;->aT:I

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->k:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/bg;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;ILjava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    return-void
.end method

.method final f()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "taobao"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->p:Ljava/lang/String;

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->f()V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "taobaoLoginView"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final i()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "loginInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->d:Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SmartInputTextView;->setSelection(I)V

    return-void

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AliUserLoginFragment;->onDestroyView()V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "phoneLoginView"

    const-string/jumbo v2, "taobaoLoginView"

    const-string/jumbo v3, "backIcon"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->j:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/security/authcenter/ui/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
