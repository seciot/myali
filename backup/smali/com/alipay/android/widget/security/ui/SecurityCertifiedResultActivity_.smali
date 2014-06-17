.class public final Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;
.super Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;


# instance fields
.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->an:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ey:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ew:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ev:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->av:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ex:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aM:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity_;->c()V

    return-void
.end method
