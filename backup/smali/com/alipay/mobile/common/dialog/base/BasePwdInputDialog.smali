.class public abstract Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;


# instance fields
.field private a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

.field private e:Ljava/lang/String;

.field protected ensureBtn:Landroid/view/View;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method protected abstract getLayoutId()I
.end method

.method protected abstract getPwdInputViewId()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x3c

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getPwdInputViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;-><init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->ensure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->ensureBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->ensureBtn:Landroid/view/View;

    new-instance v2, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;-><init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->titleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->subTitleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->ensureBtn:Landroid/view/View;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
