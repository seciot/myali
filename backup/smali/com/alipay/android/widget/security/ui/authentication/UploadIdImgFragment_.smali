.class public final Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;
.super Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;-><init>()V

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;Lcom/alipay/android/widget/security/service/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->b(Lcom/alipay/android/widget/security/service/a;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a(Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/alipay/android/widget/security/service/a;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$4;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;Lcom/alipay/android/widget/security/service/a;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->j:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->B:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->j:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->j:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bt:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ap:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aH:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bs:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ao:I

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment_;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-void
.end method
