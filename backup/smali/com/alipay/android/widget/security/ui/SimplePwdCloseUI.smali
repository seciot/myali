.class public Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/alipay/mobile/commonui/widget/APButton;

.field private d:Lcom/alipay/mobile/commonui/widget/APButton;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

.field private g:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->g:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->g:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;

    invoke-interface {v1, p1, v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->O:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gf:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aY:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ad:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aY:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aG:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->f:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$1;-><init>(Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final a(Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->g:Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI$CloseDialogCallback;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->aY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SimplePwdCloseUI;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
