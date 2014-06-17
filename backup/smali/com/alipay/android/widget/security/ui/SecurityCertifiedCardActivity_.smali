.class public final Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;


# instance fields
.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aq:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->al:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->g:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ak:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->d:Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ag:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aj:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ay:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->c()V

    return-void
.end method
