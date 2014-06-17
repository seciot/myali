.class public Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "nickname_implementation"
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "nicknameInput"
    .end annotation
.end field

.field b:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "ensureNickName"
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;)Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    return-void
.end method

.method a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v4, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "200"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "\u521b\u5efa\u8d26\u6237\u5e76\u7ed1\u5b9a\u6210\u529f"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->bindingFinish(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "607"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "202"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->bindingFinish(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    goto :goto_0
.end method

.method b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->taobaoQuickBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aZ:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cQ:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "phoneNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/NickNameImplementationActivity;->d:Ljava/lang/String;

    return-void
.end method
