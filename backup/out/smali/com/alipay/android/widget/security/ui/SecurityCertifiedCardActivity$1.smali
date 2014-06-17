.class Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "BANK_default.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;

    invoke-virtual {v0, p2}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method
