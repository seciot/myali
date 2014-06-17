.class public Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;
.implements Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "security_simplepwd_fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pwdInputTitle"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "simple_pwd_input"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "verifyBtn"
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->i:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearPwd()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    invoke-interface {v0, p1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;->a(Ljava/lang/Object;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    invoke-interface {v0, p1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;)V
    .locals 0

    iput-object p3, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->callInputMethod()V

    return-void
.end method

.method c()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->h:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$SetSimplePwdCallBack;->a()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/alipay/mobile/framework/service/ext/security/PwdHistoryClearCallBack;
    .locals 0

    return-object p0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->i:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->i:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c()V

    return-void
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->i:I

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    if-ne p1, v0, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u8fde\u7eed\u7684\u6570\u5b57"

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    move v0, v1

    :cond_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u76f8\u540c\u7684\u6570\u5b57"

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->f:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->f:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u624b\u673a\u53f7\u7801\u4e2d\u7684\u8fde\u7eed\u6570\u5b57"

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->g:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->g:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "\u8bf7\u4e0d\u8981\u4f7f\u7528\u8eab\u4efd\u8bc1\u4e2d\u7684\u8fde\u7eed\u6570\u5b57"

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearPwd()V

    goto :goto_1

    :cond_8
    const/4 v2, 0x2

    if-lt p1, v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearPwdByIndex(I)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2
.end method
