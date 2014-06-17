.class public Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

.field private c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

.field private d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/widget/ImageView;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:[Ljava/lang/String;

.field private v:Landroid/os/Handler;

.field private w:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->u:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;Landroid/graphics/Bitmap;I)V
    .locals 2

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$10;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;I)V

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;->a(Landroid/graphics/Bitmap;Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SaveImageResultCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->r:I

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->q:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$11;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$11;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    invoke-static {}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c()V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e:Landroid/view/View;

    const/high16 v1, 0x4220

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 1

    const-string/jumbo v0, "\u76f8\u673a\u6253\u5f00\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    return-void
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private g()V
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u8bbe\u5907\u6ca1\u6709\u76f8\u673a"

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->w:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->u:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g()V

    return-void
.end method

.method static synthetic u(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->f()V

    return-void
.end method

.method static synthetic v(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s:Ljava/lang/String;

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "off"

    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s:Ljava/lang/String;

    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "off"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->s:Ljava/lang/String;

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "auto"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "on"

    goto :goto_0
.end method

.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/Utilz;->a(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->p:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected final b(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/Utilz;->a(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->v:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->v:Landroid/os/Handler;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bq:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->n:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->br:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->o:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gc:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->e:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setCallback(Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraCallback;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->getPreviewController()Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->c:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview$CameraPreviewController;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aa:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cQ:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->f:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cR:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->m:Landroid/view/ViewGroup;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bh:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "off"

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fU:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fK:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->af:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$6;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cx:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$7;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$8;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->w:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b:Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$9;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CameraPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->d:Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity$StateHelper;->a(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDestroy imag0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " imag1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->u:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->f()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/android/widget/security/ui/authentication/CameraHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(I)V

    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->g()V

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;->a(I)V

    goto :goto_0
.end method
