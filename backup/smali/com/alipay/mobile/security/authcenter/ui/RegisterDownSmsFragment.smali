.class public Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;
.super Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "register_mobile"
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_phoneNubInputBox"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_CheckboxWithLinkText"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_mtSmsButton"
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/security/authcenter/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bC:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;

    const-string/jumbo v2, "3,8"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/ad;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/ad;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/af;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/af;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string/jumbo v0, "https://mgw.alipay.com/agreement.htm"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setTextViewUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/ah;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/authcenter/ui/ah;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->ck:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/ag;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/ag;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method protected a(Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cj:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x453

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/ai;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/ai;-><init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;->memo:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->g:Lcom/alipay/mobile/security/authcenter/a/f;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/a/f;->a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->a(Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/BaseRegisterUserFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/f;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/a/f;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->g:Lcom/alipay/mobile/security/authcenter/a/f;

    return-void
.end method
