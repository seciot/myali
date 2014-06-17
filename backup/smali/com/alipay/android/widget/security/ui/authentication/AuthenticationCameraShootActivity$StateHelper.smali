.class public Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHelper"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->b:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->m(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->n(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->n(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->n(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->m(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "displacement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$color;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->m(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->m(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "motorola"

    const-string/jumbo v1, "XT910"

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enterState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setVisibility(I)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aT:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(ILjava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->v(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string/jumbo v2, "\u91cd\u62cd"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string/jumbo v2, "\u7ee7\u7eed\u62cd\u6444\u53cd\u9762"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->u(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aU:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e()V

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setVisibility(I)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    :goto_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aS:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->d()V

    goto :goto_3

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->n(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->m(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string/jumbo v2, "\u91cd\u62cd"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;

    move-result-object v1

    const-string/jumbo v2, "\u63d0\u4ea4\u7167\u7247"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setVisibility(I)V

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->u(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->c:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->e()V

    goto/16 :goto_1
.end method
