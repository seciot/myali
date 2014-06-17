.class public final Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;
.super Lcom/alipay/android/widget/security/ui/SmsCheckActivity;


# instance fields
.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dj:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dp:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->I:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dl:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$3;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_$4;-><init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aj:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity_;->c()V

    return-void
.end method
